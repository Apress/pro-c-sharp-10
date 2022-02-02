namespace CarLibrary;

public class SportsCar : Car
{
    public SportsCar() { }
    public SportsCar(string name, int maxSpeed, int currentSpeed)
        : base(name, maxSpeed, currentSpeed)
    { }

    public override void TurboBoost()
    {
        Console.WriteLine("Ramming speed! Faster is better...");
    }
}
