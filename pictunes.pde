MidiEngine midiEngine;
int pianoChannel;
int marimbaChannel;

// image stuff here //
Renderer renderer;
ImageProcessor imageProcessor;
PImage img;
CellGrid cellGrid;
int cellSize = 32;

int fps = 60;
int bpm = 100;
int fp32;

void setup()
{
    fp32 = round(((1.0/bpm) * 60.0f * fps)/8.0f);
    if(fp32 < 1)
    {
        print("bpm is too high\n");
        exit();
    }
    //img = loadImage("image.jpg");
    //size(img.width, img.height);
    midiEngine = new MidiEngine();
    pianoChannel = midiEngine.addChannel(GRAND_PIANO);
    marimbaChannel = midiEngine.addChannel(MARIMBA);

    img = loadImage("image.jpg");
    size(img.width, img.height);
    
    frameRate(fps);
    // image stuff here //
    renderer = new Renderer();
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
}

void draw()
{
    midiEngine.update();

    if(frameCount % 60 == 0)
    {
        midiEngine.playNote(getPitch(frameCount % 16, -1, Scales.dorian), pianoChannel, 12, 15);
    }
    if(frameCount % 10 == 0)
    {
        midiEngine.playNote(getPitch(frameCount % 16, 0, Scales.dorian), marimbaChannel, 12, 15);
    }

    renderer.renderCellGrid(cellGrid);
}

void dispose()
{
    midiEngine.silenceAll();
} 

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}
