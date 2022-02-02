using CarEventsWithLambdas;

Console.WriteLine("***** More Fun with Lambdas *****\n");
// Make a car as usual.
Car c1 = new Car("SlugBug", 100, 10);

// Hook into events with lambdas!
c1.AboutToBlow += (sender, e) => { Console.WriteLine(e.msg); };
c1.Exploded += (sender, e) => { Console.WriteLine(e.msg); };

// Speed up (this will generate the events).
Console.WriteLine("\n***** Speeding up *****");
for (int i = 0; i < 6; i++)
{
    c1.Accelerate(20);
}

Console.ReadLine();
