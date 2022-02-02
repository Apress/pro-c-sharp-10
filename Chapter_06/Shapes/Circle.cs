namespace Shapes;
// Circle DOES NOT override Draw().
//class Circle : Shape
//{
//    public Circle() { }
//    public Circle(string name) : base(name) { }
//}

// If we did not implement the abstract Draw() method, Circle would also be
// considered abstract, and would have to be marked abstract!
class Circle : Shape
{
    public Circle() { }
    public Circle(string name) : base(name) { }
    public override void Draw()
    {
        Console.WriteLine("Drawing {0} the Circle", PetName);
    }
}
