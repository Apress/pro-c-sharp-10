namespace CustomInterfaces;
// New Shape derived class named Triangle.
class Triangle : Shape, IPointy
{
    public Triangle() { }
    public Triangle(string name) : base(name) { }
    public override void Draw()
    { Console.WriteLine("Drawing {0} the Triangle", PetName); }

    // IPointy implementation.
    //public byte Points
    //{
    //    get { return 3; }
    //}
    public byte Points => 3;
}
