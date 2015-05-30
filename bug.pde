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
        return new PVector(0.0f, 0.0f);
    }

    void move()
    {
        counter++;
        // update position?
    }
}
