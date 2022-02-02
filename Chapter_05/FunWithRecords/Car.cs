namespace FunWithRecords;
class Car
{
    // public string Make { get; set; }
    // public string Model { get; set; }
    // public string Color { get; set; }
    public string Make { get; init; }
    public string Model { get; init; }
    public string Color { get; init; }

    public Car() { }
    public Car(string make, string model, string color)
    {
        Make = make;
        Model = model;
        Color = color;
    }
}
