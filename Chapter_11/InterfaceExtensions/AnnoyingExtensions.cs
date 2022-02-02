namespace InterfaceExtensions;
static class AnnoyingExtensions
{
    public static void PrintDataAndBeep(this System.Collections.IEnumerable iterator)
    {
        foreach (var item in iterator)
        {
            Console.WriteLine(item);
            Console.Beep();
        }
    }
}
