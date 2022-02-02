using AddWithThreads;

Console.WriteLine("***** Adding with Thread objects *****");
Console.WriteLine("ID of thread in Main(): {0}",
    Environment.CurrentManagedThreadId);

AutoResetEvent _waitHandle = new AutoResetEvent(false);

// Make an AddParams object to pass to the secondary thread.
AddParams ap = new AddParams(10, 10);
Thread t = new Thread(new ParameterizedThreadStart(Add));
//set to background thread
t.IsBackground = true;
t.Start(ap);
// Force a wait to let other thread finish.
//Thread.Sleep(5);


//Wait for the wait handle to complete
_waitHandle.WaitOne();
Console.WriteLine("Other thread is done!");

Console.ReadLine();

void Add(object data)
{
    if (data is AddParams ap)
    {
        //Add in sleep to show the background thread getting terminated
        Thread.Sleep(10);

        Console.WriteLine("ID of thread in Add(): {0}",
            Environment.CurrentManagedThreadId);

        Console.WriteLine("{0} + {1} is {2}",
            ap.a, ap.b, ap.a + ap.b);

        // Tell other thread we are done.
        _waitHandle.Set();
    }
}
