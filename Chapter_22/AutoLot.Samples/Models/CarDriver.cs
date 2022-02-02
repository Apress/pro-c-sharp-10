namespace AutoLot.Samples.Models;

[Table("InventoryToDrivers", Schema = "dbo")]
public class CarDriver : BaseEntity
{
    public int DriverId { get; set; }
    [ForeignKey(nameof(DriverId))]
    public virtual Driver DriverNavigation { get; set; }

    [Column("InventoryId")]
    public int CarId { get; set; }
    [ForeignKey(nameof(CarId))]
    public virtual Car CarNavigation { get; set; }
}
