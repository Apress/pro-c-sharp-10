using ObjectInitializers;

Console.WriteLine("***** Fun with Object Init Syntax *****\n");

// Make a Point by setting each property manually.
Point firstPoint = new Point();
firstPoint.X = 10;
firstPoint.Y = 10;
firstPoint.DisplayStats();

// Or make a Point via a custom constructor.
Point anotherPoint = new Point(20, 20);
anotherPoint.DisplayStats();

// Or make a Point using object init syntax.
Point finalPoint = new Point { X = 30, Y = 30 };
finalPoint.DisplayStats();

//Make readonly point after construction
PointReadOnlyAfterCreation firstReadonlyPoint = new PointReadOnlyAfterCreation(20, 20);
firstReadonlyPoint.DisplayStats();

// Or make a Point using object init syntax.
PointReadOnlyAfterCreation secondReadonlyPoint = new PointReadOnlyAfterCreation { X = 30, Y = 30 };
secondReadonlyPoint.DisplayStats();

//The next two lines  will not compile
//secondReadonlyPoint.X = 10;
//secondReadonlyPoint.Y = 10;

// Calling a more interesting custom constructor with init syntax.
Point goldPoint = new Point(PointColorEnum.Gold) { X = 90, Y = 20 };
goldPoint.DisplayStats();

Rectangle myRect = new Rectangle
{
    TopLeft = new Point { X = 10, Y = 10 },
    BottomRight = new Point { X = 200, Y = 200 }
};

Console.ReadLine();
