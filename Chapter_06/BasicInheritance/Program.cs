using BasicInheritance;

Console.WriteLine("***** Basic Inheritance *****\n");
// Make a Car object, set max speed and current speed.
Car myCar = new Car(80) { Speed = 50 };

// Print current speed.
Console.WriteLine("My car is going {0} MPH", myCar.Speed);

// Now make a MiniVan object.
MiniVan myVan = new MiniVan { Speed = 10 };
Console.WriteLine("My van is going {0} MPH", myVan.Speed);
// Error! Can't access private members!
//myVan._currSpeed = 55;

Console.ReadLine();
