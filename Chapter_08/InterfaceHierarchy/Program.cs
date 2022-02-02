using InterfaceHierarchy;

Console.WriteLine("***** Simple Interface Hierarchy *****");

// Call from object level.
BitmapImage myBitmap = new BitmapImage();
myBitmap.Draw();
myBitmap.DrawInBoundingBox(10, 10, 100, 150);
myBitmap.DrawUpsideDown();

// Get IAdvancedDraw explicitly.
if (myBitmap is IAdvancedDraw iAdvDraw)
{
    iAdvDraw.DrawUpsideDown();
    Console.WriteLine($"Time to draw: {iAdvDraw.TimeToDraw()}");
}

//Always calls method on instance:
Console.WriteLine("***** Calling Implemented TimeToDraw *****");
Console.WriteLine($"Time to draw: {myBitmap.TimeToDraw()}");
Console.WriteLine($"Time to draw: {((IDrawable)myBitmap).TimeToDraw()}");
Console.WriteLine($"Time to draw: {((IAdvancedDraw)myBitmap).TimeToDraw()}");
Console.ReadLine();
