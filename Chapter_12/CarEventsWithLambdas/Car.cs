namespace CarEventsWithLambdas;
public class Car
{
    // Internal state data.
    public int CurrentSpeed { get; set; }
    public int MaxSpeed { get; set; }
    public string PetName { get; set; }

    // Is the car alive or dead?
    private bool _carIsDead;

    // Class constructors.
    public Car() { MaxSpeed = 100; }
    public Car(string name, int maxSp, int currSp)
    {
        CurrentSpeed = currSp;
        MaxSpeed = maxSp;
        PetName = name;
    }

    #region Delegate / Event infrastructure
    // 1) Define a delegate type.
    //public delegate void CarEngineHandler( string msgForCaller );
    public delegate void CarEngineHandler(object sender, CarEventArgs e);

    // This car can send these events.
    //public event CarEngineHandler Exploded;
    //public event CarEngineHandler AboutToBlow;
    public event EventHandler<CarEventArgs> Exploded;
    public event EventHandler<CarEventArgs> AboutToBlow;

    public void Accelerate(int delta)
    {
        // If the car is dead, fire Exploded event.
        if (_carIsDead)
        {
            //Exploded?.Invoke("Sorry, this car is dead...");
            Exploded?.Invoke(this,
                new CarEventArgs("Sorry, this car is dead..."));
        }
        else
        {
            CurrentSpeed += delta;

            // Almost dead?
            if (10 == MaxSpeed - CurrentSpeed)
            {
                //AboutToBlow?.Invoke("Careful buddy!  Gonna blow!");
                AboutToBlow?.Invoke(this,
                    new CarEventArgs("Careful buddy!  Gonna blow!"));
            }

            // Still OK!
            if (CurrentSpeed >= MaxSpeed)
            {
                _carIsDead = true;
            }
            else
            {
                Console.WriteLine("CurrentSpeed = {0}", CurrentSpeed);
            }
        }
    }
    #endregion
}
