using System.Reflection;

Console.WriteLine("***** Value of VehicleDescriptionAttribute *****\n");
ReflectAttributesUsingLateBinding();
Console.ReadLine();

static void ReflectAttributesUsingLateBinding()
{
    try
    {
        // Load the local copy of AttributedCarLibrary.
        Assembly asm = Assembly.LoadFrom("AttributedCarLibrary");

        // Get type info of VehicleDescriptionAttribute.
        Type vehicleDesc = asm.GetType("AttributedCarLibrary.VehicleDescriptionAttribute");

        // Get type info of the Description property.
        PropertyInfo propDesc = vehicleDesc.GetProperty("Description");

        // Get all types in the assembly.
        Type[] types = asm.GetTypes();

        // Iterate over each type and obtain any VehicleDescriptionAttributes.
        foreach (Type t in types)
        {
            object[] objs = t.GetCustomAttributes(vehicleDesc, false);

            // Iterate over each VehicleDescriptionAttribute and print
            // the description using late binding.
            foreach (object o in objs)
            {
                Console.WriteLine("-> {0}: {1}\n", t.Name, propDesc.GetValue(o, null));
            }
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.Message);
    }
}
