//using System.Runtime.CompilerServices;

//[assembly:InternalsVisibleTo("CSharpCarClient")]
namespace CarLibrary;

// The abstract base class in the hierarchy.
public abstract class Car
{
    public string PetName { get; set; }
    public int CurrentSpeed { get; set; }
    public int MaxSpeed { get; set; }

    protected EngineStateEnum State = EngineStateEnum.EngineAlive;
    public EngineStateEnum EngineState => State;
    public abstract void TurboBoost();

    protected Car() => Console.WriteLine("CarLibrary Version 2.0!");

    protected Car(string name, int maxSpeed, int currentSpeed)
    {
        Console.WriteLine("CarLibrary Version 2.0!");
        PetName = name;
        MaxSpeed = maxSpeed;
        CurrentSpeed = currentSpeed;
    }

    public void TurnOnRadio(bool musicOn, MusicMediaEnum mm)
        => Console.WriteLine(musicOn ? $"Jamming {mm}" : "Quiet time...");
}
