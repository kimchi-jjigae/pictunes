MidiEngine midiEngine;
int pianoChannel;
int marimbaChannel;

// image stuff here //
Renderer renderer;
ImageProcessor imageProcessor;
PImage img;
CellGrid cellGrid;
int cellSize = 32;

// bugs //
ArrayList<Bug> bugs;

void setup()
{
    ellipseMode(CORNER);
    midiEngine = new MidiEngine();
    pianoChannel = midiEngine.addChannel(GRAND_PIANO);
    marimbaChannel = midiEngine.addChannel(MARIMBA);

    img = loadImage("image.jpg");
    int w = (img.width  / cellSize) * cellSize; // cropping the image
    int h = (img.height / cellSize) * cellSize;
    size(w, h);
    
    // image stuff here //
    renderer = new Renderer();
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
    
    bugs = new ArrayList<Bug>();
}

void draw()
{
    midiEngine.update();

    if(frameCount % 60 == 0)
    {
        midiEngine.playNote(30, pianoChannel, 12, 15);
    }
    if(frameCount % 30 == 0)
    {
        midiEngine.playNote(46, marimbaChannel, 12, 15);
    }

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
    int x = (mouseX / cellSize) * cellSize; // cropping the image
    int y = (mouseY / cellSize) * cellSize;
    bugs.add(new Bug(new PVector((float)x, (float)y)));
}
