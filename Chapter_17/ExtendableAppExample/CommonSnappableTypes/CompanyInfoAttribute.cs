namespace CommonSnappableTypes;

[AttributeUsage(AttributeTargets.Class)]
public sealed class CompanyInfoAttribute : System.Attribute
{
    public string CompanyName { get; set; }
    public string CompanyUrl { get; set; }
}
