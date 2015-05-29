PImage img;

void setup()
{
    img = loadImage("image.jpg");
    size(img.width, img.height);
}

void draw()
{
    image(img, 0, 0);
}
