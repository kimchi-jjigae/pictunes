static int baseNote = 48; //one octave below C4

static int getPitch(int note, int octave, ArrayList<Integer> scale)
{
    return scale.get(note) + octave * 12;
}

static class Scales
{
    static ArrayList<Integer> dorian = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 2);
        add(baseNote + 3);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 8);
        add(baseNote + 10);

        add(baseNote + 0 + 12);
        add(baseNote + 2 + 12);
        add(baseNote + 3 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 8 + 12);
        add(baseNote + 10 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 2 + 24);
    }};
};
