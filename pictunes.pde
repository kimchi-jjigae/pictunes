import themidibus.*; // must be in libraries folder

PImage img;

MidiBus myBus;

void setup()
{
    img = loadImage("image.jpg");
    size(img.width, img.height);

    myBus = new MidiBus(this, 0, 1);
}

void draw()
{
    int channel = 0;
    int pitch = 64;
    int velocity = 127;

    image(img, 0, 0);

    myBus.sendNoteOn(channel, pitch, velocity);
    delay(200);
    myBus.sendNoteOff(channel, pitch, velocity);

    int number = 0;
    int value = 90;

    myBus.sendControllerChange(channel, number, value);
    delay(2000);
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
