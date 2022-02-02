using AnonymousMethods;

Console.WriteLine("***** Anonymous Methods *****\n");

int aboutToBlowCounter = 0;

Car c1 = new Car("SlugBug", 100, 10);

//Register event handlers as anonymous methods.
c1.AboutToBlow += static delegate
{
    //aboutToBlowCounter++;
    Console.WriteLine("Eek! Going too fast!");
};

c1.AboutToBlow += static delegate (object sender, CarEventArgs e)
{
    //aboutToBlowCounter++;
    Console.WriteLine("Message from Car: {0}", e.msg);
};

c1.Exploded += delegate (object sender, CarEventArgs e)
{
    Console.WriteLine("Fatal Message from Car: {0}", e.msg);
};



// This will eventually trigger the events.
// for (int i = 0; i < 6; i++)
// {
//     c1.Accelerate(20);
// }

// Console.WriteLine("AboutToBlow event was fired {0} times.",
//     aboutToBlowCounter);

Console.WriteLine("******** Discards with Anonymous Methods ********");

Func<int,int,int> constant = delegate (int _, int _) {return 42;};
Console.WriteLine("constant(3,4)={0}",constant(3,4));

Console.ReadLine();

