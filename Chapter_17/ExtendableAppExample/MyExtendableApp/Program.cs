using System.Reflection;
using CommonSnappableTypes;

Console.WriteLine("***** Welcome to MyTypeViewer *****");
string typeName = "";
do
{
    Console.WriteLine("\nEnter a snapin to load");
    Console.Write("or enter Q to quit: ");

    // Get name of type.
    typeName = Console.ReadLine();

    // Does user want to quit?
    if (typeName.Equals("Q", StringComparison.OrdinalIgnoreCase))
    {
        break;
    }
    // Try to display type.
    try
    {
        LoadExternalModule(typeName);
    }
    catch (Exception ex)
    {
        Console.WriteLine("Sorry, can't find snapin");
    }
}
while (true);

static void LoadExternalModule(string assemblyName)
{
    Assembly theSnapInAsm = null;

    try
    {
        // Dynamically load the selected assembly.
        theSnapInAsm = Assembly.LoadFrom(assemblyName);
    }
    catch (Exception ex)
    {
        Console.WriteLine($"An error occurred loading the snapin: {ex.Message}");
        return;
    }

    // Get all IAppFunctionality compatible classes in assembly.
    var theClassTypes =
        theSnapInAsm.GetTypes()
        .Where(t => t.IsClass && (t.GetInterface("IAppFunctionality") != null))
        .ToList();
    if (!theClassTypes.Any())
    {
        Console.WriteLine("Nothing implements IAppFunctionality!");
    }

    // Now, create the object and call DoIt() method.
    foreach (Type t in theClassTypes)
    {
        // Use late binding to create the type.
        IAppFunctionality itfApp = (IAppFunctionality)theSnapInAsm.CreateInstance(t.FullName, true);
        itfApp?.DoIt();
        //lstLoadedSnapIns.Items.Add(t.FullName);

        // Show company info.
        DisplayCompanyData(t);
    }
}
static void DisplayCompanyData(Type t)
{
    // Get [CompanyInfo] data.
    var compInfo = t
        .GetCustomAttributes(false)
        .Where(ci => (ci is CompanyInfoAttribute));

    // Show data.
    foreach (CompanyInfoAttribute c in compInfo)
    {
        Console.WriteLine($"More info about {c.CompanyName} can be found at {c.CompanyUrl}");
    }
}
