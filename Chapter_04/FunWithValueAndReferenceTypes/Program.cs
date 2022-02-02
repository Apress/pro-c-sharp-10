Console.WriteLine("***** Values types / Reference types *****\n");
ValueTypeAssignment();
Console.WriteLine();

ReferenceTypeAssignment();
Console.WriteLine();

ValueTypeContainingRefType();
Console.ReadLine();

// Assigning two intrinsic value types results in
// two independent variables on the stack.
static void ValueTypeAssignment()
{
    Console.WriteLine("Assigning value types\n");

    Point p1 = new Point(10, 10);
    Point p2 = p1;

    // Print both points.
    p1.Display();
    p2.Display();

    // Change p1.X and print again. p2.X is not changed.
    p1.X = 100;
    Console.WriteLine("\n=> Changed p1.X\n");
    p1.Display();
    p2.Display();
}

static void ReferenceTypeAssignment()
{
    Console.WriteLine("Assigning reference types\n");
    PointRef p1 = new PointRef(10, 10);
    PointRef p2 = p1;

    // Print both point refs.
    p1.Display();
    p2.Display();

    // Change p1.X and print again.
    p1.X = 100;
    Console.WriteLine("\n=> Changed p1.X\n");
    p1.Display();
    p2.Display();
}

static void ValueTypeContainingRefType()
{
    // Create the first Rectangle.
    Console.WriteLine("-> Creating r1");
    Rectangle r1 = new Rectangle("First Rect", 10, 10, 50, 50);

    // Now assign a new Rectangle to r1.
    Console.WriteLine("-> Assigning r2 to r1");
    Rectangle r2 = r1;

    // Change some values of r2.
    Console.WriteLine("-> Changing values of r2");
    r2.RectInfo.InfoString = "This is new info!";
    r2.RectBottom = 4444;

    // Print values of both rectangles.
    r1.Display();
    r2.Display();
}

struct Point
{
    // Fields of the structure.
    public int X;
    public int Y;

    // Add 1 to the (X, Y) position.
    public void Increment()
    {
        X++;
        Y++;
    }

    // Subtract 1 from the (X, Y) position.
    public void Decrement()
    {
        X--;
        Y--;
    }

    // Display the current position.
    public void Display()
    {
        Console.WriteLine("X = {0}, Y = {1}", X, Y);
    }

    // A custom constructor.
    public Point(int xPos, int yPos)
    {
        X = xPos;
        Y = yPos;
    }
}

class PointRef
{
    // Fields of the structure.
    public int X;
    public int Y;

    // Add 1 to the (X, Y) position.
    public void Increment()
    {
        X++;
        Y++;
    }

    // Subtract 1 from the (X, Y) position.
    public void Decrement()
    {
        X--;
        Y--;
    }

    // Display the current position.
    public void Display()
    {
        Console.WriteLine("X = {0}, Y = {1}", X, Y);
    }

    // A custom constructor.
    public PointRef(int xPos, int yPos)
    {
        X = xPos;
        Y = yPos;
    }
}

class ShapeInfo
{
    public string InfoString;

    public ShapeInfo(string info)
    {
        InfoString = info;
    }
}

struct Rectangle
{
    // The Rectangle structure contains a reference type member.
    public ShapeInfo RectInfo;

    public int RectTop, RectLeft, RectBottom, RectRight;

    public Rectangle(string info, int top, int left, int bottom, int right)
    {
        RectInfo = new ShapeInfo(info);
        RectTop = top;
        RectBottom = bottom;
        RectLeft = left;
        RectRight = right;
    }

    public void Display()
    {
        Console.WriteLine("String = {0}, Top = {1}, Bottom = {2}, " +
                          "Left = {3}, Right = {4}",
            RectInfo.InfoString, RectTop, RectBottom, RectLeft, RectRight);
    }
}


