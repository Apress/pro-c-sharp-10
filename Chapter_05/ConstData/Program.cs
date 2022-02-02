using ConstData;

Console.WriteLine("***** Fun with Const *****\n");
Console.WriteLine("The value of PI is: {0}", MyMathClass.PI);
// Error! Can't change a constant!
// MyMathClass.PI = 3.1444;

Console.WriteLine("The value of PI is: {0}", MyMathClass2.PI);

Console.WriteLine("=> Constant String Interpolation:");
const string foo = "Foo";
const string bar = "Bar";
const string foobar = $"{foo}{bar}";
Console.WriteLine(foobar);

Console.ReadLine();



