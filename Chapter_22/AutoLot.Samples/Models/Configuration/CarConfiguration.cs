namespace AutoLot.Samples.Models.Configuration;

public class CarConfiguration : IEntityTypeConfiguration<Car>
{
    public void Configure(EntityTypeBuilder<Car> builder)
    {
        //builder.ToTable("Inventory", "dbo", b=> b.IsTemporal());
        builder.ToTable(b => b.IsTemporal(t =>
        {
            t.HasPeriodEnd("ValidTo");
            t.HasPeriodStart("ValidFrom");
            t.UseHistoryTable("InventoryAudit", "audits");
        }));
        builder.Property<bool?>("IsDeleted").IsRequired(false).HasDefaultValue(true);
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

        builder.HasQueryFilter(c => c.IsDrivable == true);

        //builder.Property(p=>p.Price).HasConversion(new StringToNumberConverter<decimal>());

        CultureInfo provider = new CultureInfo("en-us");
        NumberStyles style = NumberStyles.Number | NumberStyles.AllowCurrencySymbol;
        builder.Property(p => p.Price)
            .HasConversion(
                v => decimal.Parse(v, style, provider),
                v => v.ToString("C2"));


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
                j => { j.HasKey(cd => new { cd.CarId, cd.DriverId }); });
    }
}