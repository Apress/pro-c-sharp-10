using Shapes;

Console.WriteLine("***** Fun with Polymorphism *****\n");

//Hexagon hex = new Hexagon("Beth");
//hex.Draw();
//Circle cir = new Circle("Cindy");
//// Calls base class implementation!
//cir.Draw();


// Make an array of Shape-compatible objects.
Shape[] myShapes = {new Hexagon(), new Circle(), new Hexagon("Mick"),
                new Circle("Beth"), new Hexagon("Linda")};

// Loop over each item and interact with the
// polymorphic interface.
foreach (Shape s in myShapes)
{
    s.Draw();
}

// This calls the Draw() method of the ThreeDCircle.
ThreeDCircle o = new ThreeDCircle();
o.Draw();

// This calls the Draw() method of the parent!
((Circle)o).Draw();

Console.ReadLine();
