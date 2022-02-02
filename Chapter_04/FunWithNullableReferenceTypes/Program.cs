string? nullableString = null;
TestClass? myNullableClass = null;


//Warning	CS8600	Converting null literal or possible null value to non-nullable type
TestClass myNonNullableClass = myNullableClass;

#nullable disable
TestClass anotherNullableClass = null;
//Warning	CS8632	The annotation for nullable reference types 
//should only be used in code within a '#nullable' annotations 
TestClass? badDefinition = null;
//Warning	CS8632	The annotation for nullable reference types 
//should only be used in code within a '#nullable' annotations 
string? anotherNullableString = null;
#nullable restore

//Not a valid call
//myNullableClass.HasValue

//Console.WriteLine("Hello World!");
//string? msg = null;
//EnterLogData(msg);

//static void EnterLogData(string message, string owner = "Programmer")
//{
//    ArgumentNullException.ThrowIfNull(message);
//    Console.WriteLine("Error: {0}", message);
//    Console.WriteLine("Owner of Error: {0}", owner);
//}

public class TestClass
{
    public string Name { get; set; }
    public int Age { get; set; }
}


