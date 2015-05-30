class Bug
{
    PVector mCurrentPosition; // in grid coordinates
    PVector mTargetPosition;
    int mCounter;
    int mCounterTarget;
    MidiEngine mMidiEngine;
    CellGrid mCellGrid;

    Bug(PVector initialPosition, MidiEngine midiEngine, CellGrid cellGrid)
    {
        mMidiEngine = midiEngine;
        mCellGrid = cellGrid;

        mCurrentPosition = initialPosition;
        mTargetPosition = initialPosition; // ???

        mCounter = 0;
        mCounterTarget = 30; // ??? need to initialise these values depending on grid stuff
    }

    PVector getInterpolatedCoordinates(int cellSize)
    {
        float percentage = mCounter / (float)mCounterTarget;
        PVector temp = PVector.lerp(mCurrentPosition, mTargetPosition, percentage);
        temp.mult(cellSize);
        return temp;
    }

    void move()
    {
        mCounter++;
        if(mCounter == mCounterTarget)
        {
            playNote();
            updateTargetPosition();
        }
    }

    void playNote()
    {
    }
    
    void updateTargetPosition()
    {
        mCurrentPosition = mTargetPosition;
        //Cell nextCell = mCellGrid.getCell(mTargetPosition.x, mTargetPosition.y);
    }
}
