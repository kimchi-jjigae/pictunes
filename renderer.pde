class Renderer
{
    Renderer()
    {
    }

    void renderCellGrid(CellGrid cg)
    {
        int cellSize = cg.mCellSize;
        ArrayList<Cell> cells = cg.mCells;
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
            fill(20, 150, 60);
            Bug temp = bugs.get(i);
            PVector coords = temp.getInterpolatedCoordinates(cellSize);
            ellipse(coords.x, coords.y, cellSize, cellSize);
        }
    }
}
