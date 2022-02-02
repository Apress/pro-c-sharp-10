namespace CustomInterfaces;
class Square : Shape, IRegularPointy
{
    public Square() { }
    public Square(string name) : base(name) { }

    //Draw comes from the Shape base class
    public override void Draw()
    {
        Console.WriteLine("Drawing a square");
    }

    //This comes from the IPointy interface
    public byte Points => 4;
    //These come from the IRegularPointy interface
    public int SideLength { get; set; }
    public int NumberOfSides { get; set; }

    //Note that the Perimeter property is not implemented
}
