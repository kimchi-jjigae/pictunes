import themidibus.*; // must be in libraries folder

// midi stuff here //
MidiBus myBus;

// image stuff here //
ImageProcessor imageProcessor;
PImage img;
CellGrid cellGrid;
int cellSize = 32;

void setup()
{
    img = loadImage("image.jpg");
    size(img.width, img.height);
    
    // midi stuff here //
    myBus = new MidiBus(this, 0, 1);

    // image stuff here //
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
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

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
