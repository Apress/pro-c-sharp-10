using System.Reflection;

Console.WriteLine("***** External Assembly Viewer *****");

string asmName = "";
Assembly asm = null;

do
{
    Console.WriteLine("\nEnter an assembly to evaluate");
    Console.Write("or enter Q to quit: ");

    // Get name of assembly.
    asmName = Console.ReadLine();

    // Does user want to quit?
    if (asmName.Equals("Q", StringComparison.OrdinalIgnoreCase))
    {
        break;
    }

    // Try to load assembly.
    try
    {
        asm = Assembly.LoadFrom(asmName);
        DisplayTypesInAsm(asm);
    }
    catch
    {
        Console.WriteLine("Sorry, can't find assembly.");
    }
} while (true);

static void DisplayTypesInAsm(Assembly asm)
{
    Console.WriteLine("\n***** Types in Assembly *****");
    Console.WriteLine("->{0}", asm.FullName);
    Type[] types = asm.GetTypes();
    foreach (Type t in types)
    {
        Console.WriteLine("Type: {0}", t);
    }
    Console.WriteLine("");
}
