using SimpleMultiThreadApp;

Console.WriteLine("***** The Amazing Thread App *****\n");
Console.Write("Do you want [1] or [2] threads? ");
string threadCount = Console.ReadLine();

// Name the current thread.
Thread primaryThread = Thread.CurrentThread;
primaryThread.Name = "Primary";

// Display Thread info.
Console.WriteLine("-> {0} is executing Main()", Thread.CurrentThread.Name);

// Make worker class.
Printer p = new Printer();

switch (threadCount)
{
    case "2":
        // Now make the thread.
        Thread backgroundThread = new Thread(new ThreadStart(p.PrintNumbers));
        backgroundThread.Name = "Secondary";
        backgroundThread.Start();
        break;
    case "1":
        p.PrintNumbers();
        break;
    default:
        Console.WriteLine("I don't know what you want...you get 1 thread.");
        goto case "1";
}
// Do some additional work.
Console.WriteLine("This is on the main thread, and we are finished.");
Console.ReadLine();
