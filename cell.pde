class Cell
{
    color mColor;
    int mAverageColor;
    color mRowColumnAverageColor;
    int mNeighborDifference;

    Cell(color col)
    {
        mColor = col;
        mAverageColor = (int)((red(col) + green(col) + blue(col)) / 3);
    }

    void setExtraData(color rowColumnAverage, int neighBorDifference)
    {
        mRowColumnAverageColor = rowColumnAverage;
        mNeighborDifference = neighBorDifference;
    }
}
