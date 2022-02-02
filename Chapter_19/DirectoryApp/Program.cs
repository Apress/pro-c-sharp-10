Console.WriteLine("***** Fun with Directory(Info) *****\n");
//NonExistentDirectory();
ShowWindowsDirectoryInfo();
DisplayImageFiles();
ModifyAppDirectory();
FunWithDirectoryType();
Console.ReadLine();

static void NonExistentDirectory()
{
    DirectoryInfo dir3 = new DirectoryInfo(
        $@"C{Path.VolumeSeparatorChar}{Path.DirectorySeparatorChar}MyCode{Path.DirectorySeparatorChar}Testing");
    dir3.Create();
}
static void ShowWindowsDirectoryInfo()
{
    // Dump directory information. If you are not on Windows, plug in another directory
    DirectoryInfo dir = new DirectoryInfo($@"C{Path.VolumeSeparatorChar}{Path.DirectorySeparatorChar}Windows");
    Console.WriteLine("***** Directory Info *****");
    Console.WriteLine("FullName: {0}", dir.FullName);
    Console.WriteLine("Name: {0}", dir.Name);
    Console.WriteLine("Parent: {0}", dir.Parent);
    Console.WriteLine("Creation: {0}", dir.CreationTime);
    Console.WriteLine("Attributes: {0}", dir.Attributes);
    Console.WriteLine("Root: {0}", dir.Root);
    Console.WriteLine("**************************\n");
}

static void DisplayImageFiles()
{
    DirectoryInfo dir = new DirectoryInfo($@"C{Path.VolumeSeparatorChar}{Path.DirectorySeparatorChar}Windows{Path.DirectorySeparatorChar}Web{Path.DirectorySeparatorChar}Wallpaper");
    // Get all files with a *.jpg extension.
    FileInfo[] imageFiles = dir.GetFiles("*.jpg", SearchOption.AllDirectories);

    // How many were found?
    Console.WriteLine("Found {0} *.jpg files\n", imageFiles.Length);

    // Now print out info for each file.
    foreach (FileInfo f in imageFiles)
    {
        Console.WriteLine("***************************");
        Console.WriteLine("File name: {0}", f.Name);
        Console.WriteLine("File size: {0}", f.Length);
        Console.WriteLine("Creation: {0}", f.CreationTime);
        Console.WriteLine("Attributes: {0}", f.Attributes);
        Console.WriteLine("***************************\n");
    }
}

static void ModifyAppDirectory()
{
    DirectoryInfo dir = new DirectoryInfo(".");

    // Create \MyFolder off initial directory.
    dir.CreateSubdirectory("MyFolder");

    // Capture returned DirectoryInfo object.
    DirectoryInfo myDataFolder = dir.CreateSubdirectory($@"MyFolder2{Path.DirectorySeparatorChar}Data");

    // Prints path to ..\MyFolder2\Data.
    Console.WriteLine("New Folder is: {0}", myDataFolder);
}

static void FunWithDirectoryType()
{
    // List all drives on current computer.
    string[] drives = Directory.GetLogicalDrives();
    Console.WriteLine("Here are your drives:");
    foreach (string s in drives)
    {
        Console.WriteLine("--> {0} ", s);
    }

    // Delete what was created.
    Console.WriteLine("Press Enter to delete directories");
    Console.ReadLine();
    try
    {
        Directory.Delete("MyFolder");

        // The second parameter specifies whether you
        // wish to destroy any subdirectories.
        Directory.Delete("MyFolder2", true);
    }
    catch (IOException e)
    {
        Console.WriteLine(e.Message);
    }
}
