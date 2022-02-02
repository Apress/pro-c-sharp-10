namespace SimpleClassExample;
class Motorcycle
{
    public int driverIntensity;
    // New members to represent the name of the driver.
    public string driverName;

    public void PopAWheely()
    {
        for (int i = 0; i <= driverIntensity; i++)
        {
            Console.WriteLine("Yeeeeeee Haaaaaeewww!");
        }
    }

    // Put back the default constructor, which will
    // set all data members to default values.
    //public Motorcycle()
    //{
    //    Console.WriteLine("In default constructor");
    //}
    // Our custom constructor.
    //public Motorcycle(int intensity)
    //{
    //    driverIntensity = intensity;
    //}
    // Constructor chaining.
    //public Motorcycle(int intensity)
    //    : this(intensity, "")
    //{
    //    Console.WriteLine("In constructor taking an int");
    //}

    //public Motorcycle(string name)
    //    : this(0, name)
    //{
    //    Console.WriteLine("In constructor taking a string");
    //}

    // This is the 'main' constructor that does all the real work.
    //public Motorcycle(int intensity, string name)
    //{
    //    Console.WriteLine("In main constructor ");
    //    if (intensity > 10)
    //    {
    //        intensity = 10;
    //    }
    //    driverIntensity = intensity;
    //    driverName = name;
    //}
    public Motorcycle(int intensity = 0, string name = "")
    {
        Console.WriteLine("In main constructor ");
        if (intensity > 10)
        {
            intensity = 10;
        }
        driverIntensity = intensity;
        driverName = name;
    }


    //public string name;
    //public void SetDriverName(string name) => this.name = name;
    public void SetDriverName(string name) => this.driverName = name;
}
