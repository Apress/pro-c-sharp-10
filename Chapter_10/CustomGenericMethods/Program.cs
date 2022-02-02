using CustomGenericMethods;

// This method will swap any two items.
// as specified by the type parameter <T>.

Console.WriteLine("***** Fun with Custom Generic Methods *****\n");

// Swap 2 ints.
int a = 10, b = 90;
Console.WriteLine("Before swap: {0}, {1}", a, b);
SwapFunctions.Swap<int>(ref a, ref b);
Console.WriteLine("After swap: {0}, {1}", a, b);
Console.WriteLine();

// Swap 2 strings.
string s1 = "Hello", s2 = "There";
Console.WriteLine("Before swap: {0} {1}", s1, s2);
SwapFunctions.Swap<string>(ref s1, ref s2);
Console.WriteLine("After swap: {0} {1}", s1, s2);
Console.WriteLine();

// Compiler will infer System.Boolean.
bool b1 = true, b2 = false;
Console.WriteLine("Before swap: {0}, {1}", b1, b2);
SwapFunctions.Swap(ref b1, ref b2);
Console.WriteLine("After swap: {0}, {1}", b1, b2);
Console.WriteLine();

// Must supply type parameter if
// the method does not take params.
DisplayBaseClass<int>();
DisplayBaseClass<string>();

// Compiler error! No params? Must supply placeholder!
// DisplayBaseClass();

Console.ReadLine();

static void DisplayBaseClass<T>()
{
    // BaseType is a method used in reflection,
    // which will be examined in Chapter 15
    Console.WriteLine("Base class of {0} is: {1}.", typeof(T), typeof(T).BaseType);
}
