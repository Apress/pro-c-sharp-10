using DynamicKeyword;

Console.WriteLine("***** Fun with the dynamic keyword *****");
PrintThreeStrings();
Console.WriteLine();

ChangeDynamicDataType();
Console.WriteLine();

InvokeMembersOnDynamicData();
Console.WriteLine();

Console.ReadLine();

static void ImplicitlyTypedVariable()
{
    // a is of type List<int>.
    var a = new List<int> { 90 };
    // This would be a compile-time error!
    // a = "Hello";
}
static void UseObjectVarible()
{
    // Create a new instance of the Person class and assign it to a variable of type System.Object
    object o = new Person() { FirstName = "Mike", LastName = "Larson" };

    // Must cast object as Person to gain access to the Person properties.
    Console.WriteLine("Person's first name is {0}", ((Person)o).FirstName);
}
static void ChangeDynamicDataType()
{
    // Declare a single dynamic data point named "t".
    dynamic t = "Hello!";
    Console.WriteLine("t is of type: {0}", t.GetType());

    t = false;
    Console.WriteLine("t is of type: {0}", t.GetType());

    t = new List<int>();
    Console.WriteLine("t is of type: {0}", t.GetType());
}
static void InvokeMembersOnDynamicData()
{
    dynamic textData1 = "Hello";

    try
    {
        Console.WriteLine(textData1.ToUpper());
        Console.WriteLine(textData1.toupper());
        Console.WriteLine(textData1.Foo(10, "ee", DateTime.Now));
    }
    catch (Microsoft.CSharp.RuntimeBinder.RuntimeBinderException ex)
    {
        Console.WriteLine(ex.Message);
    }
}

static void PrintThreeStrings()
{
    var s1 = "Greetings";
    object s2 = "From";
    dynamic s3 = "Minneapolis";

    Console.WriteLine("s1 is of type: {0}", s1.GetType());
    Console.WriteLine("s2 is of type: {0}", s2.GetType());
    Console.WriteLine("s3 is of type: {0}", s3.GetType());
}
