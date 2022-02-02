using CarDelegate;

Console.WriteLine("***** Delegates as event enablers *****\n");

// First, make a Car object.
Car c1 = new Car("SlugBug", 100, 10);

// Now, tell the car which method to call
// when it wants to send us messages.
c1.RegisterWithCarEngine(new Car.CarEngineHandler(OnCarEngineEvent));

// Register multiple targets for the notifications.
Car.CarEngineHandler handler2 = new Car.CarEngineHandler(OnCarEngineEvent2);
c1.RegisterWithCarEngine(handler2);


// Speed up (this will trigger the events).
Console.WriteLine("***** Speeding up *****");
for (int i = 0; i < 6; i++)
{
    c1.Accelerate(20);
}

// Unregister from the second handler.
c1.UnRegisterWithCarEngine(handler2);

// We won't see the "uppercase" message anymore!
Console.WriteLine("***** Speeding up Again*****");
for (int i = 0; i < 6; i++)
{
    c1.Accelerate(20);
}

Console.WriteLine("***** Method Group Conversion *****\n");
Car c2 = new Car();

// Register the simple method name.
c2.RegisterWithCarEngine(OnCarEngineEvent);

Console.WriteLine("***** Speeding up *****");
for (int i = 0; i < 6; i++)
{
    c2.Accelerate(20);
}

// Unregister the simple method name.
c2.UnRegisterWithCarEngine(OnCarEngineEvent);

// No more notifications!
for (int i = 0; i < 6; i++)
{
    c2.Accelerate(20);
}


Console.ReadLine();

// This is the target for incoming events.
static void OnCarEngineEvent(string msg)
{
    Console.WriteLine("\n***** Message From Car Object *****");
    Console.WriteLine("=> {0}", msg);
    Console.WriteLine("***********************************\n");
}
static void OnCarEngineEvent2(string msg)
{
    Console.WriteLine("=> {0}", msg.ToUpper());
}
