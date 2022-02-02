using CustomConversions;

Console.WriteLine("***** Fun with Conversions *****\n");

// Implicit cast between derived to base.
Base myBaseType;
myBaseType = new Derived();
// Must explicitly cast to store base reference
// in derived type.
Derived myDerivedType = (Derived)myBaseType; 

// Implicit cast between derived to base.
Base myBaseType2 = new();
// Must explicitly cast to store base reference
// in derived type.
Derived myDerivedType2 = myBaseType2 as Derived; 



// Make a Rectangle.
Rectangle r = new Rectangle(15, 4);
Console.WriteLine(r.ToString());
r.Draw();

Console.WriteLine();

// Convert r into a Square,
// based on the height of the Rectangle.
Square s = (Square)r;
Console.WriteLine(s.ToString());
s.Draw();
Console.WriteLine();

// Convert Rectangle to Square to invoke method.
Rectangle rect = new Rectangle(10, 5);
DrawSquare((Square)rect);
Console.WriteLine();

// Converting an int to a Square.
Square sq2 = (Square)90;
Console.WriteLine("sq2 = {0}", sq2);

// Converting a Square to a int.
int side = (int)sq2;
Console.WriteLine("Side length of sq2 = {0}", side);
Console.WriteLine();

// Implicit cast OK!
Square s3 = new Square { Length = 7 };

Rectangle rect2 = s3;
Console.WriteLine("rect2 = {0}", rect2);

// Explicit cast syntax still OK!
Square s4 = new Square { Length = 3 };
Rectangle rect3 = (Rectangle)s4;

Console.WriteLine("rect3 = {0}", rect3);

Console.ReadLine();
static void DrawSquare(Square sq)
{
    Console.WriteLine(sq.ToString());
    sq.Draw();
}

class Base
{

}
class Derived: Base
{

}
