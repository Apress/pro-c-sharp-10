using InterfaceNameClash;

Console.WriteLine("***** Fun with Interface Name Clashes *****\n");
Octagon oct = new Octagon();

// Both of these invocations call the
// same Draw() method!

IDrawToForm itfForm = (IDrawToForm)oct;
itfForm.Draw();

// Shorthand notation if you don't need
// the interface variable for later use.
((IDrawToPrinter)oct).Draw();

// Could also use the "is" keyword.
if (oct is IDrawToMemory dtm)
{
    dtm.Draw();
}

Console.ReadLine();
