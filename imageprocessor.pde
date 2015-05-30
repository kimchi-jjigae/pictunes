class ImageProcessor // only for processing the image, no data stored here
{
    ImageProcessor()
    {
    }

    CellGrid gridifyImage(PImage image, int cellSize)
    {
        image.loadPixels();
        int gridWidth  = int(image.width  / cellSize);
        int gridHeight = int(image.height / cellSize);

        ArrayList<Cell> cells = new ArrayList<Cell>();

        for(int y = 0; y < gridHeight; ++y)
        {
            int yCellStart = y * cellSize;
            int yCellEnd   = yCellStart + cellSize;

            for(int x = 0; x < gridWidth; ++x)
            {
                int redValue   = 0;
                int greenValue = 0;
                int blueValue  = 0;

                int xCellStart = x * cellSize;
                int xCellEnd   = xCellStart + cellSize;

                for(int j = yCellStart; j < yCellEnd; ++j)
                {
                    for(int i = xCellStart; i < xCellEnd; ++i)
                    {
                        color temp = image.pixels[j * image.width + i];

                        redValue   += red(temp);
                        greenValue += green(temp);
                        blueValue  += blue(temp);
                    }
                }

            redValue   = redValue   / (cellSize * cellSize);
            greenValue = greenValue / (cellSize * cellSize);
            blueValue  = blueValue  / (cellSize * cellSize);

            cells.add(new Cell(color(redValue, greenValue, blueValue)));
            }
        }

        CellGrid hej = new CellGrid(cells, gridWidth, gridHeight, cellSize);
        return hej;
    }
}
