Console.WriteLine("***** Fun with Methods *****\n");

// Pass two variables in by value.
int x = 9, y = 10;
Console.WriteLine("Before call: X: {0}, Y: {1}", x, y);
Console.WriteLine("Answer is: {0}", Add(x, y));
Console.WriteLine("After call: X: {0}, Y: {1}", x, y);
Console.WriteLine();

// No need to assign initial value to local variables
// used as output parameters.
// C# 7 introduces combining the declaration of out parameters in the method call
AddUsingOutParam(90, 90, out int ans);
Console.WriteLine("90 + 90 = {0}", ans);
FillTheseValues(out int i, out string str, out bool b);
Console.WriteLine("Int is: {0}", i);
Console.WriteLine("String is: {0}", str);
Console.WriteLine("Boolean is: {0}", b);
Console.WriteLine();
//This only gets the value for a, and ignores the other two parameters
FillTheseValues(out int a, out _, out _);

string s1 = "Flip";
string s2 = "Flop";
Console.WriteLine("Before: {0}, {1} ", s1, s2);
SwapStrings(ref s1, ref s2);
Console.WriteLine("After: {0}, {1} ", s1, s2);
Console.WriteLine();

// Pass two variables in by value.
Console.WriteLine("Answer is: {0}", Add2(x, y));
Console.WriteLine();

// Pass two variables as read only.
Console.WriteLine("Answer is: {0}", AddReadOnly(x, y));
Console.WriteLine();

// Pass in a comma-delimited list of doubles...
double average;
average = CalculateAverage(4.0, 3.2, 5.7, 64.22, 87.2);
Console.WriteLine("Average of data is: {0}", average);

// ...or pass an array of doubles.
double[] data = { 4.0, 3.2, 5.7 };
average = CalculateAverage(data);
Console.WriteLine("Average of data is: {0}", average);
Console.WriteLine();

// Average of 0 is 0!
Console.WriteLine("Average of data is: {0}", CalculateAverage());
Console.WriteLine();

EnterLogData("Oh no! Grid can't find data");
EnterLogData("Oh no! I can't find the payroll data", "CFO");
Console.WriteLine();

DisplayFancyMessage(message: "Wow!  Very Fancy indeed!",
    textColor: ConsoleColor.DarkRed,
    backgroundColor: ConsoleColor.White);

DisplayFancyMessage(backgroundColor: ConsoleColor.Green,
    message: "Testing...",
    textColor: ConsoleColor.DarkBlue);

// This is OK, as positional args are listed before named args.
DisplayFancyMessage(ConsoleColor.Blue,
    message: "Testing...",
    backgroundColor: ConsoleColor.White);

DisplayFancyMessage(message: "Hello!");
DisplayFancyMessage(backgroundColor: ConsoleColor.Green);

DisplayFancyMessage(textColor: ConsoleColor.White, backgroundColor: ConsoleColor.Blue,
    "Testing...");

Console.ReadLine();

// Value type arguments are passed by value by default.
static int Add(int x, int y)
{
    int ans = x + y;

    // Caller will not see these changes
    // as you are modifying a copy of the
    // original data.
    x = 10000;
    y = 88888;
    return ans;
}

// Output parameters must be assigned by the called method.
static void AddUsingOutParam(int x, int y, out int ans)
{
    ans = x + y;
}

// Returning multiple output parameters.
static void FillTheseValues(out int a, out string b, out bool c)
{
    a = 9;
    b = "Enjoy your string.";
    c = true;
}

// Reference parameters.
static void SwapStrings(ref string s1, ref string s2)
{
    string tempStr = s1;
    s1 = s2;
    s2 = tempStr;
}

static int Add2(int x, int y)
{
    x = 10000;
    y = 88888;
    int ans = x + y;

    return ans;
}
static int AddReadOnly(in int x, in int y)
{
    int ans = x + y;

    //Error	CS8331	Cannot assign to variable 'in int' because it is a readonly variable
    //x = 10000;
    //y = 88888;
    return ans;
}

// Return average of "some number" of doubles.
static double CalculateAverage(params double[] values)
{
    Console.WriteLine("You sent me {0} doubles.", values.Length);

    double sum = 0;
    if (values.Length == 0)
    {
        return sum;
    }

    for (int i = 0; i < values.Length; i++)
    {
        sum += values[i];
    }
    return (sum / values.Length);
}

static void EnterLogData(string message, string owner = "Programmer")
{
    //if (message == null)
    //{
    //    throw new ArgumentNullException(message);
    //}
    ArgumentNullException.ThrowIfNull(message);
    Console.WriteLine("Error: {0}", message);
    Console.WriteLine("Owner of Error: {0}", owner);
}

static void DisplayFancyMessage(ConsoleColor textColor = ConsoleColor.Blue,
    ConsoleColor backgroundColor = ConsoleColor.White, string message = "Test Message")
{
    // Store old colors to restore once message is printed. 
    ConsoleColor oldTextColor = Console.ForegroundColor;
    ConsoleColor oldbackgroundColor = Console.BackgroundColor;

    // Set new colors and print message.
    Console.ForegroundColor = textColor;
    Console.BackgroundColor = backgroundColor;

    Console.WriteLine(message);

    // Restore previous colors. 
    Console.ForegroundColor = oldTextColor;
    Console.BackgroundColor = oldbackgroundColor;
}

