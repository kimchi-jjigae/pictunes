class CellGrid // all data stored here, no processing takes place
{
    ArrayList<Cell> mCells;
    int mGridWidth;
    int mGridHeight;
    int mCellSize;

    CellGrid(ArrayList<Cell> cells, int w, int h, int cellSize)
    {
        mCells = cells;

        mGridWidth  = w;
        mGridHeight = h;

        mCellSize = cellSize;
    }
}
