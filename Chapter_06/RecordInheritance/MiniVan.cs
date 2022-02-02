namespace RecordInheritance;
//MiniVan record type
public sealed record MiniVan : Car
{
    public int Seating { get; init; }
    public new string Make { get; init; }
    public MiniVan(string make, string model, string color, int seating) : base(make, model, color)
    {
        Seating = seating;
    }
}
