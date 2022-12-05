Console.WriteLine("***** Fun with Tuples *****\n");
Console.WriteLine("=> First Example");
(string, int, string) values = ("a", 5, "c");
Console.WriteLine($"First item: {values.Item1}");
Console.WriteLine($"Second item: {values.Item2}");
Console.WriteLine($"Third item: {values.Item3}");
Console.WriteLine();

Console.WriteLine("=> Using Named Properties");
(string FirstLetter, int TheNumber, string SecondLetter) valuesWithNames = ("a", 5, "c");
Console.WriteLine($"First item: {valuesWithNames.FirstLetter}");
Console.WriteLine($"Second item: {valuesWithNames.TheNumber}");
Console.WriteLine($"Third item: {valuesWithNames.SecondLetter}");
//Using the item notation still works!
Console.WriteLine($"First item: {valuesWithNames.Item1}");
Console.WriteLine($"Second item: {valuesWithNames.Item2}");
Console.WriteLine($"Third item: {valuesWithNames.Item3}");
Console.WriteLine();
//Naming on the right
var valuesWithNames2 = (FirstLetter: "a", TheNumber: 5, SecondLetter: "c");
Console.WriteLine($"First item: {valuesWithNames2.FirstLetter}");
Console.WriteLine($"Second item: {valuesWithNames2.TheNumber}");
Console.WriteLine($"Third item: {valuesWithNames2.SecondLetter}");
Console.WriteLine();
//Naming on both sides doesn't work
(int Field1, int Field2) example = (Custom1: 5, Custom2: 7);
//This next line won't even compile. Uncomment it to see the error.
//Console.WriteLine($"Another test {example.Custom1}");

Console.WriteLine("=> Inferred Tuple Names");
var foo = new { Prop1 = "first", Prop2 = "second" };
var bar = (foo.Prop1, foo.Prop2);
Console.WriteLine($"{bar.Prop1};{bar.Prop2}");

Console.WriteLine("=> Nested Tuples");
var nt = (5, 4, ("a", "b"));

Console.WriteLine("=> Tuples Equality/Inequality");
// lifted conversions
var left = (a: 5, b: 10);
(int? a, int? b) nullableMembers = (5, 10);
Console.WriteLine(left == nullableMembers); // Also true
                                            // converted type of left is (long, long)
(long a, long b) longTuple = (5, 10);
Console.WriteLine(left == longTuple); // Also true
                                      // comparisons performed on (long, long) tuples
(long a, int b) longFirst = (5, 10);
(int a, long b) longSecond = (5, 10);
Console.WriteLine(longFirst == longSecond); // Also true


Console.WriteLine("=> Tuples as Return Values");
var samples = FillTheseValues();
Console.WriteLine($"Int is: {samples.a}");
Console.WriteLine($"String is: {samples.b}");
Console.WriteLine($"Boolean is: {samples.c}");
Console.WriteLine();
var (first, _, last) = SplitNames("Philip F Japikse");
Console.WriteLine($"{first} {last}");
Console.WriteLine();
Console.WriteLine("=> Deconstructing Tuples");
(int X, int Y) myTuple = (4,5);
int x;
int y;
(x,y) = myTuple;
Console.WriteLine($"X is: {x}");
Console.WriteLine($"Y is: {y}");
(int x1, int y1) = myTuple;
Console.WriteLine($"x1 is: {x1}");
Console.WriteLine($"y1 is: {y1}");

int x2;
(x2, int y2) = myTuple;
Console.WriteLine($"x2 is: {x2}");
Console.WriteLine($"y2 is: {y2}");
Console.WriteLine();

Point p = new Point(7, 5);
var pointValues = p.Deconstruct();
Console.WriteLine($"X is: {pointValues.XPos}");
Console.WriteLine($"Y is: {pointValues.YPos}");
Console.WriteLine();

Point p2 = new Point(8,3);
int xp2 = 0;
int yp2 = 0;
(xp2,yp2) = p2;
Console.WriteLine($"XP2 is: {xp2}");
Console.WriteLine($"YP2 is: {yp2}");


Console.ReadLine();
static (int a, string b, bool c) FillTheseValues()
{
    return (9, "Enjoy your string.", true);
}
static (string first, string middle, string last) SplitNames(string fullName)
{
    //do what is needed to split the name apart
    return ("Philip", "F", "Japikse");
}
static string GetQuadrant1(Point p)
{
    return p.Deconstruct() switch
    {
        (0, 0) => "Origin",
        var (x, y) when x > 0 && y > 0 => "One",
        var (x, y) when x < 0 && y > 0 => "Two",
        var (x, y) when x < 0 && y < 0 => "Three",
        var (x, y) when x > 0 && y < 0 => "Four",
        var (_, _) => "Border",
        //_ => "Unknown",
    };
}
static string GetQuadrant2(Point p)
{
    return p switch
    {
        (0, 0) => "Origin",
        var (x, y) when x > 0 && y > 0 => "One",
        var (x, y) when x < 0 && y > 0 => "Two",
        var (x, y) when x < 0 && y < 0 => "Three",
        var (x, y) when x > 0 && y < 0 => "Four",
        var (_, _) => "Border",
        //_ => "Unknown",
    };
}
static string RockPaperScissors(string first, string second)
{
    return (first, second) switch
    {
        ("rock", "paper") => "Rock is covered by paper. Paper wins.",
        ("rock", "scissors") => "Rock breaks scissors. Rock wins.",
        ("paper", "rock") => "Paper covers rock. Paper wins.",
        ("paper", "scissors") => "Paper is cut by scissors. Scissors wins.",
        ("scissors", "rock") => "Scissors are broken by rock. Rock wins.",
        ("scissors", "paper") => "Scissors cuts paper. Scissors wins.",
        (_, _) => "Tie.",
    };
}
static string RockPaperScissors2((string first, string second) value)
{
    return value switch
    {
        ("rock", "paper") => "Rock is covered by paper. Paper wins.",
        ("rock", "scissors") => "Rock breaks scissors. Rock wins.",
        ("paper", "rock") => "Paper covers rock. Paper wins.",
        ("paper", "scissors") => "Paper is cut by scissors. Scissors wins.",
        ("scissors", "rock") => "Scissors are broken by rock. Rock wins.",
        ("scissors", "paper") => "Scissors cuts paper. Scissors wins.",
        (_, _) => "Tie.",
    };
}
struct Point
{
    // Fields of the structure.
    public int X;
    public int Y;

    // A custom constructor.
    public Point(int XPos, int YPos)
    {
        X = XPos;
        Y = YPos;
    }

    public (int XPos, int YPos) Deconstruct() => (X, Y);
    public void Deconstruct(out int XPos, out int YPos) => (XPos, YPos) = (X, Y);
}
