PImage img;

MidiEngine midiEngine;
int pianoChannel;

void setup()
{
    //img = loadImage("image.jpg");
    //size(img.width, img.height);
    midiEngine = new MidiEngine();
    pianoChannel = midiEngine.addChannel(GRAND_PIANO);
}

int counter;

void draw()
{
    midiEngine.update();

    counter++;

    if(counter % 60 == 0)
    {
        midiEngine.playNote(30, pianoChannel, 120);
    }
}

void dispose()
{
    print("now stopping");
    midiEngine.silenceAll();
} 

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  println("Note On:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
