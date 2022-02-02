namespace MultiThreadedPrinting;

public class Printer
{
    // Lock token.
    private object threadLock = new object();

    public void PrintNumbers()
    {
        //use lock tokent
        //lock (threadLock)
        Monitor.Enter(threadLock);
        try
        {
            // Display Thread info.
            Console.WriteLine("-> {0} is executing PrintNumbers()",
                Thread.CurrentThread.Name);

            // Print out numbers.
            for (int i = 0; i < 10; i++)
            {
                // Put thread to sleep for a random amount of time.
                Random r = new Random();
                Thread.Sleep(1000 * r.Next(5));
                Console.Write("{0}, ", i);
            }

            Console.WriteLine();
        }
        finally
        {
            Monitor.Exit(threadLock);
        }
    }
}
