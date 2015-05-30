class NotePlayAnimation
{
    color col;
    float size;
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
        ellipseMode(CORNER);
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

    void renderAnimations(int cellSize)
    {
        float maxSize = cellSize * 3.0f;
        float halfCell = cellSize / 2.0f;
        ellipseMode(CENTER);
        noFill();
        strokeWeight(2);
        for(int i = 0; i < mNoteAnimations.size(); ++i)
        {
            NotePlayAnimation anim = mNoteAnimations.get(i);
            stroke(anim.col, 150);
            ellipse(((float)anim.x + 0.5f) * cellSize, ((float)anim.y + 0.5f) * cellSize, anim.size, anim.size);
            anim.size += 1.0f;
            if(anim.size > maxSize)
            {
                mNoteAnimations.remove(i);
                --i;
            }
        }
    }

    void addNotePlayAnimation(color animationColor, int x, int y, int cellSize)
    {
        NotePlayAnimation newNoteAnimation = new NotePlayAnimation();
        newNoteAnimation.col = animationColor;
        newNoteAnimation.size = cellSize;
        newNoteAnimation.x = x;
        newNoteAnimation.y = y;

        mNoteAnimations.add(newNoteAnimation);
    }

    ArrayList<NotePlayAnimation> mNoteAnimations;
}
