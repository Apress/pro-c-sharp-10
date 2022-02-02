namespace Empoyees;
public record CarRecord
{
  public string Make { get; init; }
  public string Model { get; init; }
  public string Color { get; init; }

  public sealed override string ToString() => $"The is a {Color} {Make} {Model}";
  public CarRecord() {}
  public CarRecord(string make, string model, string color)
  {
    Make = make;
    Model = model;
    Color = color;
  }
}
