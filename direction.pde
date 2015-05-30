int UP    = 0;
int RIGHT = 1;
int DOWN  = 2;
int LEFT  = 3;

int FORWARD   = 0;
int RIGHTWARD = 1;
int BACKWARD  = 2;
int LEFTWARD  = 3;

int directionAfterTurning(int currentDirection, int turningDirection)
{
    return (currentDirection + turningDirection) % 4;
}
