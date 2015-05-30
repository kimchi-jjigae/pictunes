import themidibus.*; // must be in libraries folder
import java.util.Map;
import java.util.HashMap;

class Note
{
    int pitch;
    int velocity;
    int ttl;
};

class MidiEngine
{
    MidiEngine()
    {
        mMidiBus = new MidiBus(this, 0, 1);
        mChannelInstruments = new ArrayList<Integer>();
        mPlayingNotes = new HashMap<Integer, Note>();
    }

    int addChannel(int instrument)
    {
        int newChannelId = mChannelInstruments.size();
        mChannelInstruments.add(instrument);
        mMidiBus.sendMessage(192 + newChannelId, instrument);
        return newChannelId;
    }

    void playNote(int pitch, int channel, int duration)
    {
        int velocity = 127;

        Note note = new Note();
        note.velocity = velocity;
        note.pitch = pitch;
        note.ttl = duration;

        if(mPlayingNotes.containsKey(channel))
        {
            silenceNote(channel);
        }

        mMidiBus.sendNoteOn(channel, pitch, velocity);
        mPlayingNotes.put(channel, note);
    }

    void update()
    {
        ArrayList<Integer> toDelete = new ArrayList<Integer>();

        for(Map.Entry entry : mPlayingNotes.entrySet())
        {
            Note note = (Note)entry.getValue();
            int ttl = note.ttl - 1;

            if(ttl <= 0)
            {
                toDelete.add((Integer)entry.getKey());
                print("note ttl is now %d\n", ttl);
            }
            else
            {
                print("note ttl is now %d\n", ttl);
                note.ttl = ttl;
            }
        }

        for(int i = 0; i < toDelete.size(); i++)
        {
            int channel = toDelete.get(i);
            silenceNote(channel);
        }
    }

    void silenceNote(int channel)
    {
        Note noteToDelete = mPlayingNotes.get(channel);
        mMidiBus.sendNoteOff(channel, noteToDelete.pitch, noteToDelete.velocity);
        mPlayingNotes.remove(channel);
        print("shuttong off note");
    }

    void silenceAll()
    {
        print("will silence all");
        ArrayList<Integer> toDelete = new ArrayList<Integer>();

        for(Map.Entry entry : mPlayingNotes.entrySet())
        {
            toDelete.add((Integer)entry.getKey());
        }

        for(int i = 0; i < toDelete.size(); i++)
        {
            int channel = toDelete.get(i);
            silenceNote(channel);
        }
    }

    private MidiBus mMidiBus;   
    private ArrayList<Integer> mChannelInstruments;
    private HashMap<Integer, Note> mPlayingNotes;
};
