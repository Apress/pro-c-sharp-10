namespace CloneablePoint;
// This class describes a point.
public class PointDescription
{
    public string PetName { get; set; }
    public Guid PointID { get; set; }

    public PointDescription()
    {
        PetName = "No-name";
        PointID = Guid.NewGuid();
    }
}
