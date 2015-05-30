class Bug
{
    PVector mCurrentPosition; // in grid coordinates
    PVector mTargetPosition;
    int counter;
    int counterTarget;

    Bug(PVector initialPosition)
    {
        mCurrentPosition = initialPosition;
        mTargetPosition = initialPosition; // ???

        counter = 0;
        counterTarget = 30; // ??? need to initialise these values depending on grid stuff
    }

    PVector getInterpolatedCoordinates(int cellSize)
    {
        float percentage = counter / (float)counterTarget;
        PVector temp = PVector.lerp(mCurrentPosition, mTargetPosition, percentage);
        temp.mult(cellSize);
        return temp;
    }

    void move()
    {
        counter++;
        // update position?
    }
}
