using System.Reflection;
using Microsoft.CSharp.RuntimeBinder;

Console.WriteLine("***** Adding with reflection & dynamic keyword *****\n");
AddWithReflection();
AddWithDynamic();
Console.ReadLine();

static void AddWithReflection()
{
    Assembly asm = Assembly.LoadFrom("MathLibrary");
    try
    {
        // Get metadata for the SimpleMath type.
        Type math = asm.GetType("MathLibrary.SimpleMath");

        // Create a SimpleMath on the fly.
        object obj = Activator.CreateInstance(math);

        // Get info for Add.
        MethodInfo mi = math.GetMethod("Add");

        // Invoke method (with parameters).
        object[] args = { 10, 70 };
        Console.WriteLine("Result is: {0}", mi.Invoke(obj, args));
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message);
    }
}

static void AddWithDynamic()
{
    Assembly asm = Assembly.LoadFrom("MathLibrary");

    try
    {
        // Get metadata for the SimpleMath type.
        Type math = asm.GetType("MathLibrary.SimpleMath");

        // Create a SimpleMath on the fly.
        dynamic obj = Activator.CreateInstance(math);
        Console.WriteLine("Result is: {0}", obj.Add(10, 70));
    }
    catch (RuntimeBinderException ex)
    {
        Console.WriteLine(ex.Message);
    }
}
