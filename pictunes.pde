MidiEngine midiEngine;
int pianoChannel;
int marimbaChannel;

// image stuff here //
ImageProcessor imageProcessor;
PImage img;
CellGrid cellGrid;
int cellSize = 32;

void setup()
{
    //img = loadImage("image.jpg");
    //size(img.width, img.height);
    midiEngine = new MidiEngine();
    pianoChannel = midiEngine.addChannel(GRAND_PIANO);
    marimbaChannel = midiEngine.addChannel(MARIMBA);

    img = loadImage("image.jpg");
    size(img.width, img.height);
    
    // image stuff here //
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
}

int counter;

void draw()
{
    midiEngine.update();

    counter++;

    if(counter % 60 == 0)
    {
        midiEngine.playNote(30, pianoChannel, 12, 15);
    }
    if(counter % 30 == 0)
    {
        midiEngine.playNote(46, marimbaChannel, 12, 15);
    }
}

void dispose()
{
    midiEngine.silenceAll();
} 

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
