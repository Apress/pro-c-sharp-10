using System.Reflection;

Console.WriteLine("***** The Framework Assembly Reflector App *****\n");

// Load Microsoft.EntityFrameworkCore.dll.
var displayName = "Microsoft.EntityFrameworkCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=adb9793829ddae60";
Assembly asm = Assembly.Load(displayName);
DisplayInfo(asm);
Console.WriteLine("Done!");
Console.ReadLine();

static void DisplayInfo(Assembly a)
{
    AssemblyName asmNameInfo = a.GetName();
    Console.WriteLine("***** Info about Assembly *****");
    Console.WriteLine($"Asm Name: {asmNameInfo.Name}");
    Console.WriteLine($"Asm Version: {asmNameInfo.Version}");
    Console.WriteLine($"Asm Culture: {asmNameInfo.CultureInfo.DisplayName}");
    Console.WriteLine("\nHere are the public enums:");

    // Use a LINQ query to find the public enums.
    var publicEnums = a.GetTypes().Where(p=>p.IsEnum && p.IsPublic);
    foreach (var pe in publicEnums)
    {
        Console.WriteLine(pe);
    }
}
