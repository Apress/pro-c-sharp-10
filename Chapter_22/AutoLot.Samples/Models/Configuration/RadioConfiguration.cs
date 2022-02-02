namespace AutoLot.Samples.Models.Configuration;

public class RadioConfiguration : IEntityTypeConfiguration<Radio>
{
    public void Configure(EntityTypeBuilder<Radio> builder)
    {
        builder.Property(e => e.CarId).HasColumnName("InventoryId");
        builder.HasIndex(e => e.CarId, "IX_Radios_CarId")
            .IsUnique();
        builder.HasQueryFilter(e => e.CarNavigation.IsDrivable);
        builder.HasOne(d => d.CarNavigation)
           .WithOne(p => p.RadioNavigation)
           .HasForeignKey<Radio>(d => d.CarId);
    }
}
