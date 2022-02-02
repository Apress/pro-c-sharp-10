using RecordInheritance;

Console.WriteLine("Record type inheritance!");

Car c = new Car("Honda","Pilot","Blue");

MiniVan m = new MiniVan("Honda", "Pilot", "Blue",10);

Console.WriteLine($"Checking MiniVan is-a Car:{m is Car}");
Console.WriteLine();

PositionalCar pc = new PositionalCar("Honda", "Pilot", "Blue");

PositionalMiniVan pm = new PositionalMiniVan("Honda", "Pilot", "Blue", 10);

Console.WriteLine($"Checking PositionalMiniVan is-a PositionalCar:{pm is PositionalCar}");
Console.WriteLine();

MotorCycle mc = new FancyScooter("Harley", "Lowrider","Gold");
Console.WriteLine($"mc is a FancyScooter: {mc is FancyScooter}");
MotorCycle mc2 = mc with { Make = "Harley", Model = "Lowrider" };
Console.WriteLine($"mc2 is a FancyScooter: {mc2 is FancyScooter}");


MotorCycle mc3 = new MotorCycle("Harley", "Lowrider");
Scooter sc = new Scooter("Harley", "Lowrider");
Console.WriteLine($"MotorCycle and Scooter are equal: {Equals(mc3,sc)}");

MotorCycle scMotorCycle = new Scooter("Harley", "Lowrider");

Console.WriteLine($"MotorCycle and Scooter Motorcycle are equal: {Equals(mc3,scMotorCycle)}");

var (make1, model1) = mc; //doesn't deconstruct FancyColor
var (make2, model2, fancyColor2) = (FancyScooter)mc; 



Console.ReadLine();
