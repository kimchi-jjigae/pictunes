int TWOWHOLE = -1;
int WHOLE = 0;
int THREEFOURTHS = 1;
int HALF = 2;
int FOURTH = 3;
int EIGHTH = 4;
int SIXTEENTH = 5;
int THIRTYSECOND = 6;

int lengthToThirtySeconds(int length)
{
    if(length == TWOWHOLE)
        return 64;
    else if(length == WHOLE)
        return 32;
    else if(length == THREEFOURTHS)
        return 24;
    else if(length == HALF)
        return 16;
    else if(length == FOURTH)
        return 8;
    else if(length == EIGHTH)
        return 4;
    else if(length == SIXTEENTH)
        return 2;
    else if(length == THIRTYSECOND)
        return 1;
    return 0;
}
