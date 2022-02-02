Console.WriteLine("***** Simple IO with the File Type *****\n");
var fileName = $@"C{Path.VolumeSeparatorChar}{Path.DirectorySeparatorChar}temp{Path.DirectorySeparatorChar}Test.dat";
//Make a new file on the C: Drive
// Make a new file on the C drive.
FileInfo f = new FileInfo(fileName);
FileStream fs = f.Create();

// Use the FileStream object...

// Close down file stream.
fs.Close();

//wrap the file stream in a using statement
FileInfo f1 = new FileInfo(fileName);
using (FileStream fs1 = f1.Create())
{
    // Use the FileStream object...
}
f1.Delete();
// Make a new file via FileInfo.Open().
FileInfo f2 = new FileInfo(fileName);
using (FileStream fs2 = f2.Open(FileMode.OpenOrCreate,
    FileAccess.ReadWrite, FileShare.None))
{
    // Use the FileStream object...
}
f2.Delete();
// Get a FileStream object with read-only permissions.
FileInfo f3 = new FileInfo(fileName);
//File must exist before using OpenRead
f3.Create().Close();
using (FileStream readOnlyStream = f3.OpenRead())
{
    // Use the FileStream object...
}
f3.Delete();
// Now get a FileStream object with write-only permissions.
FileInfo f4 = new FileInfo(fileName);
using (FileStream writeOnlyStream = f4.OpenWrite())
{
    // Use the FileStream object...
}
f4.Delete();

// Get a StreamReader object. If not on a Windows machine, change the file name accordingly
FileInfo f5 = new FileInfo(fileName);
//File must exist before using OpenText
f5.Create().Close();
using (StreamReader sreader = f5.OpenText())
{
    // Use the StreamReader object...
}
f5.Delete();
FileInfo f6 = new FileInfo(fileName);
using (StreamWriter swriter = f6.CreateText())
{
    // Use the StreamWriter object...
}
f6.Delete();
FileInfo f7 = new FileInfo(fileName);
using (StreamWriter swriterAppend = f7.AppendText())
{
    // Use the StreamWriter object...
}
f7.Delete();
//Using File instead of FileInfo
using (FileStream fs8 = File.Create(fileName))
{
    // Use the FileStream object...
}
File.Delete(fileName);
// Make a new file via FileInfo.Open().
using (FileStream fs9 = File.Open(fileName, FileMode.OpenOrCreate,
    FileAccess.ReadWrite, FileShare.None))
{
    // Use the FileStream object...
}
// Get a FileStream object with read-only permissions.
using (FileStream readOnlyStream = File.OpenRead(fileName))
{ }
File.Delete(fileName);
// Get a FileStream object with write-only permissions.
using (FileStream writeOnlyStream = File.OpenWrite(fileName))
{ }
// Get a StreamReader object.
using (StreamReader sreader = File.OpenText(fileName))
{ }
File.Delete(fileName);

// Get some StreamWriters.
using (StreamWriter swriter = File.CreateText(fileName))
{ }
File.Delete(fileName);

using (StreamWriter swriterAppend = File.AppendText(fileName))
{ }
File.Delete(fileName);
try
{
    string[] myTasks =
    {
                    "Fix bathroom sink", "Call Dave",
                    "Call Mom and Dad", "Play Xbox 360"
                };

    // Write out all data to file on C drive.
    File.WriteAllLines(@"tasks.txt", myTasks);

    // Read it all back and print out.
    foreach (string task in File.ReadAllLines(@"tasks.txt"))
    {
        Console.WriteLine("TODO: {0}", task);
    }
    File.Delete("tasks.txt");
}
catch (Exception ex)
{
    Console.WriteLine(ex.Message);
}

Console.ReadLine();
