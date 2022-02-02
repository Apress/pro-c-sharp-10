namespace ThreadPoolApp;

public class Printer
{
    private object lockToken = new object();

    public void PrintNumbers()
    {
        lock (lockToken)
        {
            // Display Thread info.
            Console.WriteLine("-> {0} is executing PrintNumbers()",
                Environment.CurrentManagedThreadId);

            // Print out numbers.
            Console.Write("Your numbers: ");
            for (int i = 0; i < 10; i++)
            {
                Console.Write("{0}, ", i);
                Thread.Sleep(1000);
            }
            Console.WriteLine();
        }
    }
}
