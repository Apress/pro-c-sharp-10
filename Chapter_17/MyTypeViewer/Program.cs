using System.Reflection;

Console.WriteLine("***** Welcome to MyTypeViewer *****");
string typeName = "";
do
{
    Console.WriteLine("\nEnter a type name to evaluate");
    Console.Write("or enter Q to quit: ");
    typeName = Console.ReadLine();
    if (typeName.Equals("Q", StringComparison.OrdinalIgnoreCase))
    {
        break;
    }
    try
    {
        Type t = Type.GetType(typeName);
        if (t == null && typeName.Equals("System.Console", StringComparison.OrdinalIgnoreCase))
        {
            t = typeof(System.Console);
        }
        Console.WriteLine("");
        ListVariousStats(t);
        ListFields(t);
        ListProps(t);
        ListMethods(t);
        ListInterfaces(t);
    }
    catch
    {
        Console.WriteLine("Sorry, can't find type");
    }
} while (true);

static void ListMethodsFirst(Type t)
{
    Console.WriteLine("***** Methods *****");
    MethodInfo[] mi = t.GetMethods();
    //var methodNames = from n in t.GetMethods() orderby n.Name select n.Name;
    var methodNames = t.GetMethods().OrderBy(m=>m.Name).Select(m=>m.Name);
    foreach (var name in methodNames)
    {
        Console.WriteLine("->{0}", name);
    }
    Console.WriteLine();
}
static void ListMethodsSecond(Type t)
{
  Console.WriteLine("***** Methods *****");
  MethodInfo[] mi = t.GetMethods().OrderBy(x=>x.Name).ToArray();
  foreach (MethodInfo m in mi)
  {
    // Get return type.
    string retVal = m.ReturnType.FullName;
    string paramInfo = "( ";
    // Get params.
    foreach (ParameterInfo pi in m.GetParameters())
    {
      paramInfo += string.Format("{0} {1} ", pi.ParameterType, pi.Name);
    }
    paramInfo += " )";

    // Now display the basic method sig.
    Console.WriteLine("->{0} {1} {2}", retVal, m.Name, paramInfo);
  }
  Console.WriteLine();
}
static void ListMethods(Type t)
{
  Console.WriteLine("***** Methods *****");
  var methods = t.GetMethods().OrderBy(m=>m.Name);
  foreach (var m in methods)
  {
    Console.WriteLine("->{0}", m);
  }
  Console.WriteLine();
}

static void ListFields(Type t)
{
    Console.WriteLine("***** Fields *****");
    //var fieldNames = from f in t.GetFields() orderby f.Name select f.Name;
    var fieldNames = t.GetFields().OrderBy(m=>m.Name).Select(x=>x.Name);
    foreach (var name in fieldNames)
    {
        Console.WriteLine("->{0}", name);
    }
    // var propNames = from p in t.GetProperties() orderby p.Name select p.Name;
    // //var propNames = t.GetProperties().Select(p=>p.Name);
    // foreach (var name in propNames)
    // {
    //     Console.WriteLine("->{0}", name);
    // }
    Console.WriteLine();
}
static void ListProps(Type t)
{
    Console.WriteLine("***** Properties *****");
    //var propNames = from p in t.GetProperties() orderby p.Name select p.Name;
    var propNames = t.GetProperties().OrderBy(p=>p.Name).Select(p=>p.Name);
    foreach (var name in propNames)
    {
        Console.WriteLine("->{0}", name);
    }
    Console.WriteLine();
}
static void ListInterfaces(Type t)
{
    Console.WriteLine("***** Interfaces *****");
    //var ifaces = from i in t.GetInterfaces() orderby i.Name select i;
    var ifaces = t.GetInterfaces().OrderBy(i=>i.Name);
    foreach (Type i in ifaces)
    {
        Console.WriteLine("->{0}", i.Name);
    }
}
static void ListVariousStats(Type t)
{
    Console.WriteLine("***** Various Statistics *****");
    Console.WriteLine("Base class is: {0}", t.BaseType);
    Console.WriteLine("Is type abstract? {0}", t.IsAbstract);
    Console.WriteLine("Is type sealed? {0}", t.IsSealed);
    Console.WriteLine("Is type generic? {0}", t.IsGenericTypeDefinition);
    Console.WriteLine("Is type a class type? {0}", t.IsClass);
    Console.WriteLine();
}
