// Display a simple message to the user.
Console.WriteLine("***** My First C# App *****");
Console.WriteLine("Hello World!");
Console.WriteLine();

// Process any incoming args.
for (int i = 0; i < args.Length; i++)
{
    Console.WriteLine("Arg: {0}", args[i]);
}
// Process any incoming args using foreach.
foreach (string arg in args)
{
    Console.WriteLine("Arg: {0}", arg);
}

// Get arguments using System.Environment.
string[] theArgs = Environment.GetCommandLineArgs();
foreach (string arg in theArgs)
{
    Console.WriteLine("Arg: {0}", arg);
}

ShowEnvironmentDetails();

// Wait for Enter key to be pressed before shutting down.
Console.ReadLine();

return -1;

static void ShowEnvironmentDetails()
{
    // Print out the drives on this machine,
    // and other interesting details.
    foreach (string drive in Environment.GetLogicalDrives())
    {
        Console.WriteLine("Drive: {0}", drive);
    }
    Console.WriteLine("OS: {0}", Environment.OSVersion);
    Console.WriteLine("Number of processors: {0}",
        Environment.ProcessorCount);
    Console.WriteLine(".NET Core Version: {0}",
        Environment.Version);
}
