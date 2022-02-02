namespace AttributedCarLibrary;

// A custom attribute.
// Use the AttributeUsage attribute to define allowable usage
[AttributeUsage(AttributeTargets.Class | AttributeTargets.Struct, Inherited = false)]
public sealed class VehicleDescriptionAttribute : Attribute
{
    public string Description { get; set; }
    public VehicleDescriptionAttribute(string description) => Description = description;
    public VehicleDescriptionAttribute() { }
}
