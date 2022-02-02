namespace CarLibrary;

public class MiniVan : Car
{
    public MiniVan() { }
    public MiniVan(string name, int maxSpeed, int currentSpeed)
      : base(name, maxSpeed, currentSpeed)
    { }

    public override void TurboBoost()
    {
        // Minivans have poor turbo capabilities!
        State = EngineStateEnum.EngineDead;
        Console.WriteLine("Eek! Your engine block exploded!");
    }
}
