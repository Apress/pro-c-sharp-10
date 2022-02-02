Console.WriteLine("***** LINQ Return Values *****\n");
IEnumerable<string> subset = GetStringSubset();

foreach (string item in subset)
{
    Console.WriteLine(item);
}

foreach (string item in GetStringSubsetAsArray())
{
    Console.WriteLine(item);
}
Console.ReadLine();

static IEnumerable<string> GetStringSubset()
{
    string[] colors = { "Light Red", "Green", "Yellow", "Dark Red", "Red", "Purple" };

    // Note subset is an IEnumerable<string>-compatible object.
    IEnumerable<string> theRedColors = from c in colors where c.Contains("Red") select c;

    return theRedColors;
}
static string[] GetStringSubsetAsArray()
{
    string[] colors = { "Light Red", "Green", "Yellow", "Dark Red", "Red", "Purple" };

    var theRedColors = from c in colors where c.Contains("Red") select c;

    // Map results into an array.
    return theRedColors.ToArray();
}
