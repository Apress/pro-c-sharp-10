using System.Collections;
using SimpleException;

Console.WriteLine("***** Simple Exception Example *****");
Console.WriteLine("=> Creating a car and stepping on it!");
Car myCar = new Car("Zippy", 20);
myCar.CrankTunes(true);

// Speed up past the car's max speed to
// trigger the exception.
try
{
    for (int i = 0; i < 10; i++)
    {
        myCar.Accelerate(10);
    }
}
catch (Exception e)
{
    Console.WriteLine("\n*** Error! ***");
    Console.WriteLine("Member name: {0}", e.TargetSite);
    Console.WriteLine("Class defining member: {0}", e.TargetSite.DeclaringType);
    Console.WriteLine("Member type: {0}", e.TargetSite.MemberType);
    Console.WriteLine("Message: {0}", e.Message);
    Console.WriteLine("Source: {0}", e.Source);
    Console.WriteLine("Stack: {0}", e.StackTrace);
    Console.WriteLine("Help Link: {0}", e.HelpLink);
    Console.WriteLine("\n-> Custom Data:");
    foreach (DictionaryEntry de in e.Data)
    {
        Console.WriteLine("-> {0}: {1}", de.Key, de.Value);
    }

}
// The error has been handled, processing continues with the next statement.
Console.WriteLine("\n***** Out of exception logic *****");

Console.ReadLine();
