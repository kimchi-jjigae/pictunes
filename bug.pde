int RED   = 0;
int GREEN = 1;
int BLUE  = 2;

class Bug
{
    PVector mCurrentPosition; // in grid coordinates
    PVector mTargetPosition;
    int mCounter;
    int mCounterTarget;
    MidiEngine mMidiEngine;
    CellGrid mCellGrid;

    int mChannel;
    int mOctave;
    int mPitchColor;
    int mDirectionColor;
    int mDirection;
    int mTempoColor;
    int mTempoOffset;

    Bug(PVector initialPosition, MidiEngine midiEngine, CellGrid cellGrid, int instrument, int octave, int pitchColor, int dirColor, int tempoColor, int tempoOffset)
    {
        mMidiEngine = midiEngine;
        mCellGrid = cellGrid;

        mCurrentPosition = initialPosition;
        Cell cell = mCellGrid.getCell((int)mCurrentPosition.x, (int)mCurrentPosition.y);
        mTargetPosition = calculatePosition(cell.mColor, true);

        mChannel = midiEngine.addChannel(instrument);
        mOctave = octave;
        mPitchColor = pitchColor;
        mDirectionColor = dirColor;
        mDirection = calculateInitialDirection(cell.mColor);
        mTempoColor = tempoColor;
        mTempoOffset = tempoOffset;

        mCounter = 0;
        mCounterTarget = calculateCounter(cell.mColor); // ??? need to initialise these values depending on grid stuff
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
            updatePosition();
        }
    }

    void updatePosition()
    {
        Cell nextCell = mCellGrid.getCell((int)mTargetPosition.x, (int)mTargetPosition.y);

        mCurrentPosition = mTargetPosition;

        int pitchNumber = calculatePitch(nextCell.mColor);
        int duration = calculateDuration(nextCell.mNeighborDifference);
        int strength = calculateStrength(nextCell.mColorAverage);

        mTargetPosition = calculatePosition(nextCell.mColor, nextCell.isAlive());

        if(nextCell.isAlive())
            mMidiEngine.playNote(getPitch(pitchNumber, mOctave, Scales.dorian), mChannel, duration, strength);
        nextCell.damage();

        mCounter = 0;
        mCounterTarget = calculateCounter(nextCell.mColor);
    }

    int calculateInitialDirection(color cellColor)
    {
        int channelColor = 0;
        if(mDirectionColor == RED)
        {
            channelColor = (int)red(cellColor);
        }
        else if(mDirectionColor == GREEN)
        {
            channelColor = (int)green(cellColor);
        }
        else if(mDirectionColor == BLUE)
        {
            channelColor = (int)blue(cellColor);
        }
        
        return channelColor % 4;
    }

    PVector calculatePosition(color cellColor, boolean alive)
    {
        int channelColor = 0;
        if(mDirectionColor == RED)
        {
            channelColor = (int)red(cellColor);
        }
        else if(mDirectionColor == GREEN)
        {
            channelColor = (int)green(cellColor);
        }
        else if(mDirectionColor == BLUE)
        {
            channelColor = (int)blue(cellColor);
        }

        int turning = channelColor % 16;
        if(turning < 5)
        {
            turning = FORWARD;
        }
        else if(turning < 10)
        {
            turning = LEFTWARD;
        }
        else if(turning < 15)
        {
            turning = RIGHTWARD;
        }
        else
        {
            turning = BACKWARD;
        }

        turning = alive ? turning : FORWARD;
        int newDir = directionAfterTurning(mDirection, turning);

        int xValue = int(mCurrentPosition.x);
        int yValue = int(mCurrentPosition.y);

        if(newDir == UP)      // up 
        {
            if(yValue == 0)
            {
                yValue++;
                newDir = DOWN;
            }
            else
            {
                yValue--;
            }
        }
        else if(newDir == RIGHT) // right
        {
            if(xValue == mCellGrid.mGridWidth - 1)
            {
                xValue--;
                newDir = LEFT;
            }
            else
            {
                xValue++;
            }
        }
        else if(newDir == DOWN) // down
        {
            if(yValue == mCellGrid.mGridHeight - 1)
            {
                yValue--;
                newDir = UP;
            }
            else
            {
                yValue++;
            }
        }
        else if(newDir == LEFT) // left
        {
            if(xValue == 0)
            {
                xValue++;
                newDir = RIGHT;
            }
            else
            {
                xValue--;
            }
        }

        mDirection = newDir;

        return new PVector((float)xValue, (float)yValue);
    }

    int calculatePitch(color cellColor)
    {
        int channelColor = 0;
        if(mPitchColor == RED)
        {
            channelColor = (int)red(cellColor);
        }
        else if(mPitchColor == GREEN)
        {
            channelColor = (int)green(cellColor);
        }
        else if(mPitchColor == BLUE)
        {
            channelColor = (int)blue(cellColor);
        }
        
        return (int)(channelColor / 4) % 16;
    }

    int calculateDuration(int neighborDiff)
    {
        return lengthToThirtySeconds((int)(neighborDiff / 43) + mTempoOffset) * fp32;
    }

    int calculateStrength(int cellAverageColor)
    {
        return cellAverageColor / 16;
    }

    int calculateCounter(color cellColor)
    {
        int channelColor = 0;
        if(mTempoColor == RED)
        {
            channelColor = (int)red(cellColor);
        }
        else if(mTempoColor == GREEN)
        {
            channelColor = (int)green(cellColor);
        }
        else if(mTempoColor == BLUE)
        {
            channelColor = (int)blue(cellColor);
        }

        return lengthToThirtySeconds((int)(channelColor / 43) + mTempoOffset) * fp32;
    }
}
