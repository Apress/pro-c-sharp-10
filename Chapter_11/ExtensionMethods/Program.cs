using MyExtensionMethods;

Console.WriteLine("***** Fun with Extension Methods *****\n");

// The int has assumed a new identity!
int myInt = 12345678;
myInt.DisplayDefiningAssembly();

// So has the DataSet!
System.Data.DataSet d = new System.Data.DataSet();
d.DisplayDefiningAssembly();

// Use new integer functionality.
Console.WriteLine("Value of myInt: {0}", myInt);
Console.WriteLine("Reversed digits of myInt: {0}", myInt.ReverseDigits());

Console.ReadLine();
