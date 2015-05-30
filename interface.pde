class GUI
{
    String mTextChoose;
    String mTextChange;
    String mTextContinue;

    color mColor1 = #000000; // text colour
    color mColor2 = #cccccc; // bg colour
    color mColor3 = #eeeeee; // highlighted bg

    float mButtonWidth = 600.0f;
    float mButtonHeight = 180.0f;

    GUI()
    {
        mTextChoose = "Choose an image...";
        mTextChange = "Choose a different image...";
        mTextContinue = "Process the image!";
    }
};
