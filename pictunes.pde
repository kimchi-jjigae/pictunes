MidiEngine midiEngine;

// image stuff here //
Renderer renderer;
ImageProcessor imageProcessor;
PImage img;
boolean imageSelected;
String imagePath;
CellGrid cellGrid;
int cellSize = 32;

// bugs //
ArrayList<Bug> bugs;

int fps = 60;
int bpm = 160;
int fp32;

int state;
GUI gui;

static ArrayList<Integer> theScale;
String thePath = "image.jpg";

void setup()
{
    //selectInput("Select an image to process: ", "imageChosen");
    setupImage();
    theScale = Scales.pentaMin;

    fp32 = round(((1.0/bpm) * 60.0f * fps)/8.0f);
    if(fp32 < 1)
    {
        print("bpm is too high\n");
        exit();
    }
    midiEngine = new MidiEngine();
    renderer = new Renderer();
    gui = new GUI();

    imageSelected = false;
    frameRate(fps);
    ellipseMode(CORNER);
    noStroke();
    //size(640, 420);
//if(frame != null)
//{
//frame.setResizable(true);
//}
    state = STATE_PLAY;

    bugs = new ArrayList<Bug>();
}

void draw()
{
    switch(state)
    {
        //case STATE_SPLASH:
        //    background(20, 170, 100);
        //    break;
        //case STATE_MENU:
        //    background(80, 50, 100);
        //    //renderer.renderMenuGUI(gui, imageSelected);
        //    break;
        //case STATE_LOADING:
        //    background(200, 170, 100);
        //    break;
        case STATE_PLAY:
            image(img, 0, 0);
            midiEngine.update();

            renderer.renderCellGrid(cellGrid);
            renderer.renderBugs(bugs, cellSize);
            renderer.renderAnimations(cellSize);
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
            if(imageSelected)
            {
                state++;
            }
            else
            {
               selectInput("Select an image to process: ", "imageChosen");
            }
            break;
        case STATE_LOADING:
            state++;
            break;
        case STATE_PLAY:
            float x = (mouseX / cellSize);
            float y = (mouseY / cellSize);
            bugs.add(new Bug((new PVector(x, y)), renderer, midiEngine, cellGrid, WOOD_BASS, -1, RED, GREEN, BLUE, -1)); // bass
            bugs.add(new Bug((new PVector(x, y)), renderer, midiEngine, cellGrid, RHODES,  0, GREEN, BLUE, RED,  0)); // mid
            bugs.add(new Bug((new PVector(x, y)), renderer, midiEngine, cellGrid, JAZZ_GUITAR, +1, BLUE, RED, GREEN, +1)); // upper
            break;
    }
}

void setupImage()
{
    img = loadImage(thePath);
    int w = (img.width  / cellSize) * cellSize; // cropping the image
    int h = (img.height / cellSize) * cellSize;
    //frame.setSize(w, h);
    size(w, h);
    imageProcessor = new ImageProcessor();
    cellGrid = imageProcessor.gridifyImage(img, cellSize);
}

void imageChosen(File selection)
{
    if(selection == null)
    {
        print("nothing selected\n");
    }
    else
    {
        print("User selected " + selection.getAbsolutePath() + "\n");
        imagePath = selection.getAbsolutePath();
        imageSelected = true;
    }
    setupImage();
    state = STATE_PLAY;
}
