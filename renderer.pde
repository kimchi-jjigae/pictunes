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
            //fill(cells.get(i).mColor);
            int avg = cells.get(i).mNeighborDifference;
            fill(color(avg));
            rect((i % cg.mGridWidth) * cellSize, (i / cg.mGridWidth) * cellSize, cellSize, cellSize);
        }
    }

    void renderBugs(ArrayList<Bug> bugs, int cellSize)
    {
        for(int i = 0; i < bugs.size(); ++i)
        {
            fill(0);
            Bug temp = bugs.get(i);
            PVector coords = temp.getInterpolatedCoordinates(cellSize);
            ellipse(coords.x, coords.y, cellSize, cellSize);
        }
    }
}
