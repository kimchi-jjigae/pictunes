class Cell
{
    color mColor;
    int mColorAverage;
    color mRowColumnAverageColor;
    int mNeighborDifference;
    int mHealth;

    Cell(color col)
    {
        mColor = col;
        mColorAverage = (int)((red(col) + green(col) + blue(col)) / 3);
        mHealth = 4;
    }

    void setExtraData(color rowColumnAverage, int neighborDifference)
    {
        mRowColumnAverageColor = rowColumnAverage;
        mNeighborDifference = neighborDifference;
    }

    void damage()
    {
        if(mHealth > 0)
            mHealth--;
    }

    boolean isAlive()
    {
        return mHealth > 0;   
    }
}
