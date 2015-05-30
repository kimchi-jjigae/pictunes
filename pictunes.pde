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

int state;

void setup()
{
    fp32 = round(((1.0/bpm) * 60.0f * fps)/8.0f);
    if(fp32 < 1)
    {
        print("bpm is too high\n");
        exit();
    }
    midiEngine = new MidiEngine();
    renderer = new Renderer();

    setupImage();

    frameRate(fps);
    ellipseMode(CORNER);
    noStroke();
    state = STATE_SPLASH;

    bugs = new ArrayList<Bug>();
}

void draw()
{
    switch(state)
    {
        case STATE_SPLASH:
            background(20, 170, 100);
            break;
        case STATE_MENU:
            background(80, 50, 100);
            break;
        case STATE_LOADING:
            background(200, 170, 100);
            break;
        case STATE_PLAY:
            image(img, 0, 0);
            midiEngine.update();

            renderer.renderCellGrid(cellGrid);
            renderer.renderBugs(bugs, cellSize);
            for(int i = 0; i < bugs.size(); ++i)
            {
                bugs.get(i).move();
            }
            break;
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
    switch(state)
    {
        case STATE_SPLASH:
            state++;
            break;
        case STATE_MENU:
            state++;
            break;
        case STATE_LOADING:
            state++;
            break;
        case STATE_PLAY:
            float x = (mouseX / cellSize);
            float y = (mouseY / cellSize);
            bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()), -1, RED, GREEN, BLUE, -1)); // base
            bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()),  0, GREEN, BLUE, RED,  0)); // mid
            bugs.add(new Bug((new PVector(x, y)), midiEngine, cellGrid, instrumentFromIndex(bugs.size()), +1, BLUE, RED, GREEN, +1)); // upper
            break;
    }
}

void setupImage()
{
    img = loadImage("image.jpg");
    int w = (img.width  / cellSize) * cellSize; // cropping the image
    int h = (img.height / cellSize) * cellSize;
    size(w, h);
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
}
