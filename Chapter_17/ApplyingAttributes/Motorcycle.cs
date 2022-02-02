namespace ApplyingAttributes;

public class Motorcycle
{
    [JsonIgnore]
    public float weightOfCurrentPassengers;

    // These fields are still serializable.
    public bool hasRadioSystem;
    public bool hasHeadSet;
    public bool hasSissyBar;
}
