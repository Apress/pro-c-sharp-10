namespace LinqUsingEnumerable;
class VeryComplexQueryExpression
{
    public static void QueryStringsWithRawDelegates()
    {
        Console.WriteLine("***** Using Raw Delegates *****");

        string[] currentVideoGames = { "Morrowind", "Uncharted 2", "Fallout 3", "Daxter", "System Shock 2" };

        // Build the necessary Func<> delegates.
        Func<string, bool> searchFilter = new Func<string, bool>(Filter);
        Func<string, string> itemToProcess = new Func<string, string>(ProcessItem);

        // Pass the delegates into the methods of Enumerable.
        var subset = currentVideoGames.Where(searchFilter).OrderBy(itemToProcess).Select(itemToProcess);

        // Print out the results.
        foreach (var game in subset)
            Console.WriteLine("Item: {0}", game);
        Console.WriteLine();
    }

    // Delegate targets.
    public static bool Filter(string game) { return game.Contains(" "); }
    public static string ProcessItem(string game) { return game; }
}
