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

        return gatherData(new CellGrid(cells, gridWidth, gridHeight, cellSize));
    }

    CellGrid gatherData(CellGrid grid)
    {
        int gridWidth = grid.mGridWidth;
        int gridHeight = grid.mGridHeight;

        for(int y = 0; y < gridHeight; ++y)
        {
            for(int x = 0; x < gridWidth; ++x)
            {
                //row col avg
                Cell toSet = grid.getCell(x, y);

                int redAccumulator = 0;
                int greenAccumulator = 0;
                int blueAccumulator = 0;

                for(int i = 0; i < gridWidth; i++)
                {
                    color cellColor = grid.getCell(i, y).mColor;
                    redAccumulator += red(cellColor);
                    blueAccumulator += green(cellColor);
                    greenAccumulator += blue(cellColor);
                }
                for(int i = 0; i < gridHeight; i++)
                {
                    color cellColor = grid.getCell(x, i).mColor;
                    redAccumulator += red(cellColor);
                    blueAccumulator += green(cellColor);
                    greenAccumulator += blue(cellColor);
                }

                int amount = gridWidth + gridHeight;
                color rowColumnAverageColor = color(redAccumulator / amount, greenAccumulator / amount, blueAccumulator / amount);

                //neighbor diff       
                int neighBorDifference = 0;

                toSet.setExtraData(rowColumnAverageColor, neighBorDifference);
            }
        }
        return grid;
    }
}
