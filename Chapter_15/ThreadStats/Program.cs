Console.WriteLine("***** Primary Thread stats *****\n");

// Obtain and name the current thread.
Thread primaryThread = Thread.CurrentThread;
primaryThread.Name = "ThePrimaryThread";

// Print out some stats about this thread.
Console.WriteLine("ID of current thread: {0}",
    primaryThread.ManagedThreadId);
Console.WriteLine("Thread Name: {0}",
    primaryThread.Name);
Console.WriteLine("Has thread started?: {0}",
    primaryThread.IsAlive);
Console.WriteLine("Priority Level: {0}",
    primaryThread.Priority);
Console.WriteLine("Thread State: {0}",
    primaryThread.ThreadState);
Console.ReadLine();

