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
            fill(cells.get(i).mColour);
            rect((i % cg.mGridWidth) * cellSize, (i / cg.mGridWidth) * cellSize, cellSize, cellSize);
        }
    }
}
