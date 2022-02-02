using OopExamples;

Console.WriteLine("--- Fun with OOP examples ---");

// Call is forwarded to Radio internally.
Car viper = new Car();
viper.TurnOnRadio(false);

Shape[] myShapes = new Shape[3];
myShapes[0] = new Hexagon();
myShapes[1] = new Circle();
myShapes[2] = new Hexagon();

foreach (Shape s in myShapes)
{
  // Use the polymorphic interface!
  s.Draw();
}
Console.ReadLine();

// Humm. That is one heck of a mini-novel!
Book miniNovel = new Book();
miniNovel.numberOfPages = 30_000_000;


