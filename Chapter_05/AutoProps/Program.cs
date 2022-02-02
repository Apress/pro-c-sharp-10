using AutoProps;

Console.WriteLine("***** Fun with Automatic Properties *****\n");

// Make a car.
Car c = new Car();
c.PetName = "Frank";
c.Speed = 55;
c.Color = "Red";

Console.WriteLine("Your car is named {0}? That's odd...",
  c.PetName);
c.DisplayStats();

// Put car in the garage.
Garage g = new Garage();
g.MyAuto = c;
// OK, prints default value of zero.
Console.WriteLine("Number of Cars in garage: {0}", g.NumberOfCars);

Console.WriteLine("Your car is named {0}",g.MyAuto.PetName);

Console.ReadLine();
