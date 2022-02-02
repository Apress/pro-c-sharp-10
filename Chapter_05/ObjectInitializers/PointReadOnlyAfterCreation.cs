namespace ObjectInitializers;
class PointReadOnlyAfterCreation
{
    public int X { get; init; }
    public int Y { get; init; }
    public PointColorEnum Color { get; init; }

    public PointReadOnlyAfterCreation(int xVal, int yVal)
    {
        X = xVal;
        Y = yVal;
        Color = PointColorEnum.Gold;
    }
    public PointReadOnlyAfterCreation() : this(PointColorEnum.BloodRed) { }

    public PointReadOnlyAfterCreation(PointColorEnum ptColor)
    {
        Color = ptColor;
    }

    public void DisplayStats()
    {
        Console.WriteLine("InitOnlySetter: [{0}, {1}]", X, Y);
        Console.WriteLine("InitOnlySetter: Point is {0}", Color);
    }
}
