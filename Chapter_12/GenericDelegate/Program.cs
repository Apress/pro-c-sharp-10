Console.WriteLine("***** Generic Delegates *****\n");

// Register targets.
MyGenericDelegate<string> strTarget = new MyGenericDelegate<string>(StringTarget);
strTarget("Some string data");

//Using the method group conversion syntax
MyGenericDelegate<int> intTarget = IntTarget;
intTarget(9);
Console.ReadLine();

static void StringTarget(string arg)
{
    Console.WriteLine("arg in uppercase is: {0}", arg.ToUpper());
}

static void IntTarget(int arg)
{
    Console.WriteLine("++arg is: {0}", ++arg);
}

delegate void MyGenericDelegate<T>(T arg);
