class CellGrid // all data stored here, no processing takes place
{
    ArrayList<Cell> mCells;
    int gridWidth;
    int gridHeight;

    CellGrid(ArrayList<Cell> cells, int w, int h)
    {
        mCells = cells;

        gridWidth  = w;
        gridHeight = h;
    }
}
