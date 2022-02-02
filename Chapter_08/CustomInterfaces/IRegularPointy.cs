namespace CustomInterfaces;
interface IRegularPointy : IPointy
{
    int SideLength { get; set; }
    int NumberOfSides { get; set; }
    int Perimeter => SideLength * NumberOfSides;

    //Static members are also allowed in C# 8
    static string ExampleProperty { get; set; }

    static IRegularPointy() => ExampleProperty = "Foo";
}
