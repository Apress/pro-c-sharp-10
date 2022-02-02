namespace CustomGenericMethods;
static class SwapFunctions
{
    // Swap two integers.
    internal static void Swap(ref int a, ref int b)
    {
        int temp = a;
        a = b;
        b = temp;
    }

    // Swap two Person objects.
    internal static void Swap(ref Person a, ref Person b)
    {
        Person temp = a;
        a = b;
        b = temp;
    }
    internal static void Swap<T>(ref T a, ref T b)
    {
        Console.WriteLine("You sent the Swap() method a {0}", typeof(T));
        T temp = a;
        a = b;
        b = temp;
    }
}
