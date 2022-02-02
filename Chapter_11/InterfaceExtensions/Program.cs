using InterfaceExtensions;

Console.WriteLine("***** Extending Interface Compatible Types *****\n");

// System.Array implements IEnumerable!
string[] data = { "Wow", "this", "is", "sort", "of", "annoying",
                "but", "in", "a", "weird", "way", "fun!"};
data.PrintDataAndBeep();

Console.WriteLine();

// List<T> implements IEnumerable!
List<int> myInts = new List<int>() { 10, 15, 20 };
myInts.PrintDataAndBeep();

Console.ReadLine();
