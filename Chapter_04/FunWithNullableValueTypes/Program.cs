Console.WriteLine("***** Fun with Nullable Value Types *****\n");
DatabaseReader dr = new DatabaseReader();

// Get int from "database".
int? i = dr.GetIntFromDatabase();
if (i.HasValue)
{
    Console.WriteLine("Value of 'i' is: {0}", i.Value);
}
else
{
    Console.WriteLine("Value of 'i' is undefined.");
}

// Get bool from "database".
bool? b = dr.GetBoolFromDatabase();
if (b != null)
{
    Console.WriteLine("Value of 'b' is: {0}", b.Value);
}
else
{
    Console.WriteLine("Value of 'b' is undefined.");
}

// If the value from GetIntFromDatabase() is null,
// assign local variable to 100.
int myData = dr.GetIntFromDatabase() ?? 100;
Console.WriteLine("Value of myData: {0}", myData);

// Long hand version of using ? : ?? syntax.
int? moreData = dr.GetIntFromDatabase();
if (!moreData.HasValue)
{
    moreData = 100;
}
Console.WriteLine("Value of moreData: {0}", moreData);

//Null coalescing assignment operator
int? nullableInt = null;
nullableInt ??= 12;
nullableInt ??= 14;
Console.WriteLine(nullableInt);

TesterMethod(null);

Console.ReadLine();

static void LocalNullableVariables()
{
    // Define some local nullable types.
    int? nullableInt = 10;
    double? nullableDouble = 3.14;
    bool? nullableBool = null;
    char? nullableChar = 'a';
    int?[] arrayOfNullableInts = new int?[10];

}

static void LocalNullableVariablesUsingNullable()
{
    // Define some local nullable types using Nullable<T>.
    Nullable<int> nullableInt = 10;
    Nullable<double> nullableDouble = 3.14;
    Nullable<bool> nullableBool = null;
    Nullable<char> nullableChar = 'a';
    Nullable<int>[] arrayOfNullableInts = new Nullable<int>[10];
}

static void TesterMethod(string[] args)
{
    // We should check for null before accessing the array data!
    Console.WriteLine($"You sent me {args?.Length ?? 0} arguments.");
}

class DatabaseReader
{
    // Nullable data field.
    public int? numericValue = null;
    public bool? boolValue = true;

    // Note the nullable return type.
    public int? GetIntFromDatabase()
    {
        return numericValue;
    }

    // Note the nullable return type.
    public bool? GetBoolFromDatabase()
    {
        return boolValue;
    }
}
