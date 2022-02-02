namespace ObjectInitializers;
class Point
{
    public int X { get; set; }
    public int Y { get; set; }
    public PointColorEnum Color { get; set; }

    public Point(int xVal, int yVal)
    {
        X = xVal;
        Y = yVal;
        Color = PointColorEnum.Gold;
    }
    public Point() : this(PointColorEnum.BloodRed) { }

    public Point(PointColorEnum ptColor)
    {
        Color = ptColor;
    }

    public void DisplayStats()
    {
        Console.WriteLine("[{0}, {1}]", X, Y);
        Console.WriteLine("Point is {0}", Color);
    }

}
