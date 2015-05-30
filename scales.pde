static int baseNote = 48; //one octave below C4

static int getPitch(int note, int octave, ArrayList<Integer> scale)
{
    return scale.get(note) + octave * 12;
}

static class Scales
{
    static ArrayList<Integer> mixolydian = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 2);
        add(baseNote + 4);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 9);
        add(baseNote + 10);

        add(baseNote + 0 + 12);
        add(baseNote + 2 + 12);
        add(baseNote + 4 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 9 + 12);
        add(baseNote + 10 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 2 + 24);
    }};

    static ArrayList<Integer> ionian = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 2);
        add(baseNote + 4);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 9);
        add(baseNote + 11);

        add(baseNote + 0 + 12);
        add(baseNote + 2 + 12);
        add(baseNote + 4 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 9 + 12);
        add(baseNote + 11 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 2 + 24);
    }};

    static ArrayList<Integer> dorian = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 2);
        add(baseNote + 3);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 9);
        add(baseNote + 10);

        add(baseNote + 0 + 12);
        add(baseNote + 2 + 12);
        add(baseNote + 3 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 9 + 12);
        add(baseNote + 10 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 2 + 24);
    }};

    static ArrayList<Integer> aeolian = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 2);
        add(baseNote + 3);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 8);
        add(baseNote + 10);

        add(baseNote + 0 + 12);
        add(baseNote + 2 + 12);
        add(baseNote + 3 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 8 + 12);
        add(baseNote + 10 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 2 + 24);
    }};

    static ArrayList<Integer> pentaMin = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 3);
        add(baseNote + 5);
        add(baseNote + 7);
        add(baseNote + 10);

        add(baseNote + 0 + 12);
        add(baseNote + 3 + 12);
        add(baseNote + 5 + 12);
        add(baseNote + 7 + 12);
        add(baseNote + 10 + 12);

        add(baseNote + 0 + 24);
        add(baseNote + 3 + 24);
        add(baseNote + 5 + 24);
        add(baseNote + 7 + 24);
        add(baseNote + 10 + 24);

        add(baseNote + 0 + 36);
    }};

    static ArrayList<Integer> chromatic = new ArrayList<Integer>() {{
        add(baseNote + 0);
        add(baseNote + 1);
        add(baseNote + 2);
        add(baseNote + 3);
        add(baseNote + 4);
        add(baseNote + 5);
        add(baseNote + 6);
        add(baseNote + 7);
        add(baseNote + 8);
        add(baseNote + 9);
        add(baseNote + 10);
        add(baseNote + 11);
        add(baseNote + 12);
        add(baseNote + 13);
        add(baseNote + 14);
        add(baseNote + 15);
    }};
};
