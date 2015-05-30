MidiEngine midiEngine;

// image stuff here //
Renderer renderer;
ImageProcessor imageProcessor;
PImage img;
CellGrid cellGrid;
int cellSize = 32;

// bugs //
ArrayList<Bug> bugs;

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
    midiEngine = new MidiEngine();

    img = loadImage("image.jpg");
    int w = (img.width  / cellSize) * cellSize; // cropping the image
    int h = (img.height / cellSize) * cellSize;
    size(w, h);
    ellipseMode(CORNER);
    noStroke();
    
    frameRate(fps);
    // image stuff here //
    renderer = new Renderer();
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
    
    bugs = new ArrayList<Bug>();
}

void draw()
{
    image(img, 0, 0);
    midiEngine.update();

    renderer.renderCellGrid(cellGrid);
    renderer.renderBugs(bugs, cellSize);
    for(int i = 0; i < bugs.size(); ++i)
    {
        bugs.get(i).move();
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

void mouseClicked()
{
    float x = (mouseX / cellSize);
    float y = (mouseY / cellSize);
    bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()), -1, RED, GREEN, BLUE, -1));
    bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()),  0, GREEN, BLUE, RED,  0));
    bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()), +1, BLUE, RED, GREEN, +1));
}
