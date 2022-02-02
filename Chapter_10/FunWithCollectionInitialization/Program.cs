using System.Collections;
using System.Drawing;

Console.WriteLine("***** Fun with Collections Initialization *****\n");
// Init a standard array.
int[] myArrayOfInts = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

// Init a generic List<> of ints.
List<int> myGenericList = new List<int> { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

// Init an ArrayList with numerical data.
ArrayList myList = new ArrayList { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

List<Point> myListOfPoints = new List<Point>
            {
                new Point { X = 2, Y = 2 },
                new Point { X = 3, Y = 3 },
                new Point { X = 4, Y = 4 }
            };

foreach (var pt in myListOfPoints)
{
    Console.WriteLine(pt);
}
List<Rectangle> myListOfRects = new List<Rectangle>
            {
                new Rectangle {
                    Height = 90, Width = 90, Location = new Point { X = 10, Y = 10 }},
                new Rectangle {
                    Height = 50,Width = 50, Location = new Point { X = 2, Y = 2 }},
            };

foreach (var r in myListOfRects)
{
    Console.WriteLine(r);
}

Console.ReadLine();

