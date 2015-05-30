class NotePlayAnimation
{
    color col;
    int ttl;
    int x;
    int y;
};

class Renderer
{
    Renderer()
    {
        mNoteAnimations = new ArrayList<NotePlayAnimation>();
    }

    void renderMenuGUI(GUI gui, boolean imgSelected)
    {
        stroke(gui.mColor1);
        fill(gui.mColor2);

        if(imgSelected)
        {
            rect((width - gui.mButtonWidth) / 2.0f, (height / 2.0f) - gui.mButtonHeight, gui.mButtonWidth, gui.mButtonHeight);
            rect((width - gui.mButtonWidth) / 2.0f, height - gui.mButtonHeight, gui.mButtonWidth, gui.mButtonHeight);
        }
        else
        {
            rect((width - gui.mButtonWidth) / 2.0f, (height - gui.mButtonHeight) / 2.0f, gui.mButtonWidth, gui.mButtonHeight);
        }
    }

    void renderCellGrid(CellGrid cg)
    {
        int cellSize = cg.mCellSize;
        ArrayList<Cell> cells = cg.mCells;
        noStroke();
        for(int i = 0; i < cells.size(); ++i)
        {
            color squareColor = cells.get(i).mColor;
            squareColor = color(red(squareColor), green(squareColor), blue(squareColor), cells.get(i).mHealth * 64 - 1);
            fill(squareColor);
            rect((i % cg.mGridWidth) * cellSize, (i / cg.mGridWidth) * cellSize, cellSize, cellSize);
        }
    }

    void renderBugs(ArrayList<Bug> bugs, int cellSize)
    {
        for(int i = 0; i < bugs.size(); ++i)
        {
            fill(0);
            stroke(bugs.get(i).renderColor());
            strokeWeight(10);
            Bug temp = bugs.get(i);
            PVector coords = temp.getInterpolatedCoordinates(cellSize);
            ellipse(coords.x, coords.y, cellSize, cellSize);
        }
    }

    void addNotePlayAnimation(color animationColor, int x, int y)
    {
        NotePlayAnimation newNoteAnimation = new NotePlayAnimation();
        newNoteAnimation.col = animationColor;
        newNoteAnimation.ttl = 30;
        newNoteAnimation.x = x;
        newNoteAnimation.y = y;

        mNoteAnimations.add(newNoteAnimation);
    }

    ArrayList<NotePlayAnimation> mNoteAnimations;
}
