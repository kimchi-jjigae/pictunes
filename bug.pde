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
    int mTempoColor;
    int mTempoOffset;

    Bug(PVector initialPosition, MidiEngine midiEngine, CellGrid cellGrid, int instrument, int octave, int pitchColor, int dirColor, int tempoColor, int tempoOffset)
    {
        mChannel = midiEngine.addChannel(instrument);
        mOctave = octave;
        mPitchColor = pitchColor;
        mDirectionColor = dirColor;
        mTempoColor = tempoColor;
        mTempoOffset = tempoOffset;

        mMidiEngine = midiEngine;
        mCellGrid = cellGrid;

        mCurrentPosition = initialPosition;
        mTargetPosition = calculatePosition(mCellGrid.getCell((int)mCurrentPosition.x, (int)mCurrentPosition.y).mColor);

        mCounter = 0;
        mCounterTarget = 60; // ??? need to initialise these values depending on grid stuff
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
        mTargetPosition = calculatePosition(nextCell.mColor);

        int pitchNumber = calculatePitch(nextCell.mColor);
        int duration = calculateDuration(nextCell.mColor);
        int strength = calculateStrength(nextCell.mAverageColor);

        mMidiEngine.playNote(getPitch(pitchNumber, mOctave, Scales.dorian), mChannel, duration, strength);
        mCounter = 0;
    }

    PVector calculatePosition(color cellColor)
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
        
        int dir = channelColor % 4;

        int xValue = int(mCurrentPosition.x);
        int yValue = int(mCurrentPosition.y);

        if(dir == 0)      // up 
        {
            if(yValue == 0)
            {
                yValue++;
            }
            else
            {
                yValue--;
            }
        }
        else if(dir == 1) // right
        {
            if(xValue == mCellGrid.mGridWidth - 1)
            {
                xValue--;
            }
            else
            {
                xValue++;
            }
        }
        else if(dir == 2) // down
        {
            if(yValue == mCellGrid.mGridHeight - 1)
            {
                yValue--;
            }
            else
            {
                yValue++;
            }
        }
        else if(dir == 3) // left
        {
            if(xValue == 0)
            {
                xValue++;
            }
            else
            {
                xValue--;
            }
        }

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

    int calculateDuration(color cellColor)
    {
        return 60; // DUMMY VALUE
    }

    int calculateStrength(int cellAverageColor)
    {
        return cellAverageColor / 16;
    }
}
