namespace Shapes;
// Hexagon DOES override Draw().
class Hexagon : Shape
{
    public Hexagon() { }
    public Hexagon(string name) : base(name) { }
    public override void Draw()
    {
        Console.WriteLine("Drawing {0} the Hexagon", PetName);
    }
}
