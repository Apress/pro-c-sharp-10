namespace CarDelegate;
public class Car
{
    // 1) Define a delegate type.
    public delegate void CarEngineHandler(string msgForCaller);

    // 2) Define a member variable of this delegate.
    private CarEngineHandler _listOfHandlers;

    // 3) Add registration function for the caller.
    public void RegisterWithCarEngine(CarEngineHandler methodToCall)
    {
        //_listOfHandlers = methodToCall;

        // Now with multicasting support!
        // Note we are now using the += operator, not
        // the assignment operator (=).
        //_listOfHandlers += methodToCall;

        //Alternate method of registering multiple delegates
        if (_listOfHandlers == null)
        {
            _listOfHandlers = methodToCall;
        }
        else
        {
            _listOfHandlers = Delegate.Combine(_listOfHandlers, methodToCall) as CarEngineHandler;
        }

    }
    public void UnRegisterWithCarEngine(CarEngineHandler methodToCall)
    {
        //_listOfHandlers -= methodToCall;
        if (_listOfHandlers.GetInvocationList().Contains(methodToCall))
        {
            _listOfHandlers = Delegate.Remove(_listOfHandlers, methodToCall) as CarEngineHandler;
        }
    }


    // 4) Implement the Accelerate() method to invoke the delegate's
    //    invocation list under the correct circumstances.
    public void Accelerate(int delta)
    {
        // If this car is "dead," send dead message.
        if (_carIsDead)
        {
            _listOfHandlers?.Invoke("Sorry, this car is dead...");
        }
        else
        {
            CurrentSpeed += delta;

            // Is this car "almost dead"?
            if (10 == (MaxSpeed - CurrentSpeed))
            {
                _listOfHandlers?.Invoke("Careful buddy! Gonna blow!");
            }

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



    // Internal state data.
    public int CurrentSpeed { get; set; }
    public int MaxSpeed { get; set; } = 100;
    public string PetName { get; set; }

    // Is the car alive or dead?
    private bool _carIsDead;

    // Class constructors.
    public Car() { }
    public Car(string name, int maxSp, int currSp)
    {
        CurrentSpeed = currSp;
        MaxSpeed = maxSp;
        PetName = name;
    }
}
