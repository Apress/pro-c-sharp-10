using CommonSnappableTypes;

namespace CSharpSnapIn;
[CompanyInfo(CompanyName = "FooBar", CompanyUrl = "www.FooBar.com")]
public class CSharpModule : IAppFunctionality
{
    void IAppFunctionality.DoIt()
    {
        Console.WriteLine("You have just used the C# snap-in!");
    }
}
