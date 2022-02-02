namespace AutoLot.Samples.Models.Configuration;

public class CarConfiguration : IEntityTypeConfiguration<Car>
{
    public void Configure(EntityTypeBuilder<Car> builder)
    {
        builder.ToTable("Inventory", "dbo");
        builder.HasKey(e => e.Id);
        builder.HasIndex(e => e.MakeId, "IX_Inventory_MakeId");
        builder.Property(e => e.Color)
            .IsRequired()
            .HasMaxLength(50)
            .HasDefaultValue("Black");
        builder.Property(e => e.PetName)
            .IsRequired()
            .HasMaxLength(50);
        builder.Property(e => e.DateBuilt).HasDefaultValueSql("getdate()");
        builder.Property(e => e.IsDrivable)
            .HasField("_isDrivable")
            .HasDefaultValue(true);
        builder.Property(e => e.TimeStamp)
            .IsRowVersion()
            .IsConcurrencyToken();
        builder.Property(e => e.Display).HasComputedColumnSql("[PetName] + ' (' + [Color] + ')'", stored: true);
        builder.HasOne(d => d.MakeNavigation)
                      .WithMany(p => p.Cars)
                      .HasForeignKey(d => d.MakeId)
                      .OnDelete(DeleteBehavior.ClientSetNull)
                      .HasConstraintName("FK_Inventory_Makes_MakeId");

        builder
            .HasMany(p => p.Drivers)
            .WithMany(p => p.Cars)
            .UsingEntity<CarDriver>(
               j => j
                   .HasOne(cd => cd.DriverNavigation)
                   .WithMany(d => d.CarDrivers)
                   .HasForeignKey(nameof(CarDriver.DriverId))
                   .HasConstraintName("FK_InventoryDriver_Drivers_DriverId")
                   .OnDelete(DeleteBehavior.Cascade),
               j => j
                   .HasOne(cd => cd.CarNavigation)
                   .WithMany(c => c.CarDrivers)
                   .HasForeignKey(nameof(CarDriver.CarId))
                   .HasConstraintName("FK_InventoryDriver_Inventory_InventoryId")
                   .OnDelete(DeleteBehavior.ClientCascade),
               j =>
                   {
                       j.HasKey(cd => new { cd.CarId, cd.DriverId });
                   });

    }
}
