class Cell
{
    color mColor;
    int mColorAverage;
    color mRowColumnAverageColor;
    int mNeighborDifference;

    Cell(color col)
    {
        mColor = col;
        mColorAverage = (int)((red(col) + green(col) + blue(col)) / 3);
    }

    void setExtraData(color rowColumnAverage, int neighborDifference)
    {
        mRowColumnAverageColor = rowColumnAverage;
        mNeighborDifference = neighborDifference;
    }
}
