using SimpleClassExample;

Console.WriteLine("***** Fun with Class Types *****\n");

// Allocate and configure a Car object.
Car myCar = new Car();
myCar.petName = "Henry";
myCar.currSpeed = 10;

// Speed up the car a few times and print out the
// new state.
for (int i = 0; i <= 10; i++)
{
    myCar.SpeedUp(5);
    myCar.PrintState();
}

Console.WriteLine("***** Default Constructor *****\n");
// Invoking the default constructor.
Car chuck = new Car();

// Prints "Chuck is going 10 MPH."
chuck.PrintState();

// Make a Car called Mary going 0 MPH.
Car mary = new Car("Mary");
mary.PrintState();

// Make a Car called Daisy going 75 MPH.
Car daisy = new Car("Daisy", 75);
daisy.PrintState();


Console.WriteLine("***** Fun with Motorcycles *****\n");
//Motorcycle mc = new Motorcycle();
//mc.PopAWheely();

// Make a Motorcycle with a rider named Tiny?
Motorcycle c = new Motorcycle(5);
c.SetDriverName("Tiny");
c.PopAWheely();
Console.WriteLine("Rider name is {0}", c.driverName); // Prints an empty name value!
MakeSomeBikes();
Console.ReadLine();
static void MakeSomeBikes()
{
    // driverName = "", driverIntensity = 0
    Motorcycle m1 = new Motorcycle();
    Console.WriteLine("Name= {0}, Intensity= {1}",
        m1.driverName, m1.driverIntensity);

    // driverName = "Tiny", driverIntensity = 0
    Motorcycle m2 = new Motorcycle(name: "Tiny");
    Console.WriteLine("Name= {0}, Intensity= {1}",
        m2.driverName, m2.driverIntensity);

    // driverName = "", driverIntensity = 7
    Motorcycle m3 = new Motorcycle(7);
    Console.WriteLine("Name= {0}, Intensity= {1}",
        m3.driverName, m3.driverIntensity);
}
