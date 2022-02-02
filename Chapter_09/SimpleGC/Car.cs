namespace SimpleGC;
// Car.cs
public class Car
{
    public int CurrentSpeed { get; set; }
    public string PetName { get; set; }

    public Car() { }
    public Car(string name, int speed)
    {
        PetName = name;
        CurrentSpeed = speed;
    }
    public override string ToString() => $"{PetName} is going {CurrentSpeed} MPH";
}
