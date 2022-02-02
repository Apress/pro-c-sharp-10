using AttributedCarLibrary;

Console.WriteLine("***** Value of VehicleDescriptionAttribute *****\n");
ReflectOnAttributesUsingEarlyBinding();
Console.ReadLine();

static void ReflectOnAttributesUsingEarlyBinding()
{
    // Get a Type representing the Winnebago.
    Type t = typeof(Winnebago);

    // Get all attributes on the Winnebago.
    object[] customAtts = t.GetCustomAttributes(false);

    // Print the description.
    foreach (VehicleDescriptionAttribute v in customAtts)
    {
        Console.WriteLine("-> {0}\n", v.Description);
    }
}
