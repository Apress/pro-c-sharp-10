using CustomInterfaces;

Console.WriteLine("***** A First Look at Interfaces *****\n");
CloneableExample();

Console.WriteLine("\n***** Fun with Interfaces *****\n");
// Call Points property defined by IPointy.
Hexagon hex = new Hexagon();
Console.WriteLine("Points: {0}", hex.Points);
Console.WriteLine();
// Catch a possible InvalidCastException.
Circle c = new Circle("Lisa");
IPointy itfPt = null;
try
{
    itfPt = (IPointy)c;
    Console.WriteLine(itfPt.Points);
}
catch (InvalidCastException e)
{
    Console.WriteLine(e.Message);
}
// Can we treat hex2 as IPointy?
Hexagon hex2 = new Hexagon("Peter");
IPointy itfPt2 = hex2 as IPointy;
if (itfPt2 != null)
{
    Console.WriteLine("Points: {0}", itfPt2.Points);
}
else
{
    Console.WriteLine("OOPS! Not pointy...");
}
if (hex2 is IPointy itfPt3)
{
    Console.WriteLine("Points: {0}", itfPt3.Points);
}
else
{
    Console.WriteLine("OOPS! Not pointy...");
}

var sq = new Square("Boxy") { NumberOfSides = 4, SideLength = 4 };
//Now we lose the Draw method and PetName property
//IRegularPointy sq = new Square("Boxy") {NumberOfSides = 4, SideLength = 4};
sq.Draw();
//This won't compile, since Perimeter isn't implemented on the Square class
//Console.WriteLine($"{sq.PetName} has {sq.NumberOfSides} of length {sq.SideLength} and a perimeter of {sq.Perimeter}");
Console.WriteLine($"{sq.PetName} has {sq.NumberOfSides} of length {sq.SideLength} and a perimeter of {((IRegularPointy)sq).Perimeter}");
Console.WriteLine($"Example property: {IRegularPointy.ExampleProperty}");
IRegularPointy.ExampleProperty = "Updated";
Console.WriteLine($"Example property: {IRegularPointy.ExampleProperty}");
var sq2 = new Square("The Second") { NumberOfSides = 4, SideLength = 3 };
Console.WriteLine($"Example property: {IRegularPointy.ExampleProperty}");

Console.WriteLine();
Shape[] myShapes = { new Hexagon(), new Circle(),
                new Triangle("Joe"), new Circle("JoJo") };
for (int i = 0; i < myShapes.Length; i++)
{
    // Can I draw you in 3D?
    if (myShapes[i] is IDraw3D s)
    {
        DrawIn3D(s);
    }
}
// Get first pointy item.
IPointy firstPointyItem = FindFirstPointyShape(myShapes);
// To be safe, use the null conditional operator.
Console.WriteLine("The item has {0} points", firstPointyItem?.Points);

// This array can only contain types that
// implement the IPointy interface.
IPointy[] myPointyObjects = {new Hexagon(), new Knife(),
                new Triangle(), new Fork(), new PitchFork()};

foreach (IPointy i in myPointyObjects)
{
    Console.WriteLine("Object has {0} points.", i.Points);
}

Console.ReadLine();

static void CloneableExample()
{
    // All of these classes support the ICloneable interface.
    string myStr = "Hello";
    OperatingSystem unixOS = new OperatingSystem(PlatformID.Unix, new Version());

    // Therefore, they can all be passed into a method taking ICloneable.
    CloneMe(myStr);
    CloneMe(unixOS);
    static void CloneMe(ICloneable c)
    {
        // Clone whatever we get and print out the name.
        object theClone = c.Clone();
        Console.WriteLine("Your clone is a: {0}",
            theClone.GetType().Name);
    }
}
static void DrawIn3D(IDraw3D itf3d)
{
    Console.WriteLine("-> Drawing IDraw3D compatible type");
    itf3d.Draw3D();
}
// This method returns the first object in the
// array that implements IPointy.
static IPointy FindFirstPointyShape(Shape[] shapes)
{
    foreach (Shape s in shapes)
    {
        if (s is IPointy ip)
        {
            return ip;
        }
    }
    return null;
}

