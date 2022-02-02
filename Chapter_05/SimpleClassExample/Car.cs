namespace SimpleClassExample;
class Car
{
    // The 'state' of the Car.
    public string petName;
    public int currSpeed;

    // A custom default constructor.
    public Car()
    {
        petName = "Chuck";
        currSpeed = 10;
    }

    // In this constructor, currSpeed will receive the
    // default value of an int (zero).
    //public Car(string pn)
    //{
    //    petName = pn;
    //}

    //Previous Constructor as expression bodied member
    public Car(string pn) => petName = pn;

    // Let caller set the full state of the Car.
    public Car(string pn, int cs)
    {
        petName = pn;
        currSpeed = cs;
    }

    public Car(string pn, int cs, out bool inDanger)
    {
        petName = pn;
        currSpeed = cs;
        if (cs > 100)
        {
            inDanger = true;
        }
        else
        {
            inDanger = false;
        }
    }

    // The functionality of the Car.
    // Using the expression-bodied member syntax introduced in C# 6
    public void PrintState()
        => Console.WriteLine("{0} is going {1} MPH.", petName, currSpeed);

    public void SpeedUp(int delta)
        => currSpeed += delta;
}
