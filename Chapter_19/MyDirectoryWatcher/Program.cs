Console.WriteLine("***** The Amazing File Watcher App *****\n");
// Establish the path to the directory to watch.
FileSystemWatcher watcher = new FileSystemWatcher();
try
{
    watcher.Path = ".";
}
catch (ArgumentException ex)
{
    Console.WriteLine(ex.Message);
    return;
}
// Set up the things to be on the lookout for.
watcher.NotifyFilter = NotifyFilters.LastAccess
                       | NotifyFilters.LastWrite
                       | NotifyFilters.FileName
                       | NotifyFilters.DirectoryName;

// Only watch text files.
watcher.Filter = "*.txt";

// Specify what is done when a file is changed, created, or deleted.
watcher.Changed += (s, e) =>
    Console.WriteLine($"File: {e.FullPath} {e.ChangeType}!");

watcher.Created += (s, e) =>
    Console.WriteLine($"File: {e.FullPath} {e.ChangeType}!");

watcher.Deleted += (s, e) =>
    Console.WriteLine($"File: {e.FullPath} {e.ChangeType}!");

watcher.Renamed += (s, e) =>
    Console.WriteLine($"File: {e.OldFullPath} renamed to {e.FullPath}");

// Begin watching the directory.
watcher.EnableRaisingEvents = true;
Console.WriteLine(@"Press 'q' to quit app.");

// Raise some events.
using (var sw = File.CreateText("Test.txt"))
{
    sw.Write("This is some text");
}
File.Move("Test.txt", "Test2.txt");
File.Delete("Test2.txt");
// Wait for the user to quit the program.
while (Console.Read() != 'q') ;
