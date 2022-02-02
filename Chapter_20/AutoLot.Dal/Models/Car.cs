namespace AutoLot.Dal.Models;
public class Car
{
    public int Id { get; set; }
    public int MakeId { get; set; }
    public string Color { get; set; }
    public string PetName { get; set; }
    public byte[] TimeStamp { get; set; }
}
