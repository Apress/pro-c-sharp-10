namespace AutoLot.Samples;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
    {
        SavingChanges += (sender, args) =>
        {
            Console.WriteLine($"Saving changes for {((DbContext)sender).Database.GetConnectionString()}");
        };
        SavedChanges += (sender, args) =>
        {
            Console.WriteLine($"Saved {args.EntitiesSavedCount} entities");
        };
        SaveChangesFailed += (sender, args) =>
        {
            Console.WriteLine($"An exception occurred! {args.Exception.Message} entities");
        };
        ChangeTracker.StateChanged += ChangeTracker_StateChanged;
        ChangeTracker.Tracked += ChangeTracker_Tracked;
    }

    private void ChangeTracker_StateChanged(object sender, EntityStateChangedEventArgs e)
    {
        if (e.OldState == EntityState.Modified && e.NewState == EntityState.Unchanged)
        {
            Console.WriteLine($"An entity of type {e.Entry.Entity.GetType().Name} was updated.");
        }
    }

    private void ChangeTracker_Tracked(object sender, EntityTrackedEventArgs e)
    {
        if (e.FromQuery)
        {
            Console.WriteLine($"An entity of type {e.Entry.Entity.GetType().Name} was loaded from the database.");
        }
    }
    [DbFunction("udf_CountOfMakes", Schema = "dbo")]
    public static int InventoryCountFor(int makeId)
                => throw new NotSupportedException();
    [DbFunction("udtf_GetCarsForMake", Schema = "dbo")]
    public IQueryable<Car> GetCarsFor(int makeId)
                => FromExpression(() => GetCarsFor(makeId));
    public DbSet<Car> Cars { get; set; }
    public DbSet<Make> Makes { get; set; }
    public DbSet<Radio> Radios { get; set; }
    public DbSet<Driver> Drivers { get; set; }
    public DbSet<CarDriver> CarsToDrivers { get; set; }
    public DbSet<CarMakeViewModel> CarMakeViewModels { get; set; }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        new CarConfiguration().Configure(modelBuilder.Entity<Car>());
        new RadioConfiguration().Configure(modelBuilder.Entity<Radio>());
        new DriverConfiguration().Configure(modelBuilder.Entity<Driver>());
        new CarMakeViewModelConfiguration().Configure(modelBuilder.Entity<CarMakeViewModel>());
        //modelBuilder.Entity<Car>(entity =>
        //{
        //    entity.ToTable("Inventory", "dbo");
        //    entity.HasKey(e => e.Id);
        //    entity.HasIndex(e => e.MakeId, "IX_Inventory_MakeId");
        //    entity.Property(e => e.Color)
        //        .IsRequired()
        //        .HasMaxLength(50)
        //        .HasDefaultValue("Black");
        //    entity.Property(e => e.PetName)
        //        .IsRequired()
        //        .HasMaxLength(50);
        //    entity.Property(e => e.DateBuilt).HasDefaultValueSql("getdate()");
        //    entity.Property(e => e.IsDrivable)
        //        .HasField("_isDrivable")
        //        .HasDefaultValue(true);
        //    entity.Property(e => e.TimeStamp)
        //        .IsRowVersion()
        //        .IsConcurrencyToken();
        //    entity.Property(e => e.Display).HasComputedColumnSql("[PetName] + ' (' + [Color] + ')'", stored: true);
        //    entity.HasOne(d => d.MakeNavigation)
        //                  .WithMany(p => p.Cars)
        //                  .HasForeignKey(d => d.MakeId)
        //                  .OnDelete(DeleteBehavior.ClientSetNull)
        //                  .HasConstraintName("FK_Inventory_Makes_MakeId");
        //});

        //Same as above
        // modelBuilder.Entity<Make>(entity =>
        // {
        //     entity.HasMany(e => e.Cars)
        //         .WithOne(c => c.MakeNavigation)
        //         .HasForeignKey(c => c.MakeId)
        //         .OnDelete(DeleteBehavior.ClientSetNull)
        //         .HasConstraintName("FK_Inventory_Makes_MakeId");
        // });

        //modelBuilder.Entity<Radio>(entity =>
        //{
        //    entity.Property(e => e.CarId).HasColumnName("InventoryId");
        //    entity.HasIndex(e => e.CarId, "IX_Radios_CarId")
        //        .IsUnique();
        //    entity.HasOne(d => d.CarNavigation)
        //       .WithOne(p => p.RadioNavigation)
        //       .HasForeignKey<Radio>(d => d.CarId);
        //});
        //Same as above
        //modelBuilder.Entity<Radio>(entity =>
        //{
        //    entity.HasIndex(e => e.CarId, "IX_Radios_CarId")
        //        .IsUnique();
        //});
        // modelBuilder.Entity<Car>(entity =>
        // {
        //     entity.HasOne(d => d.RadioNavigation)
        //         .WithOne(p => p.CarNavigation)
        //         .HasForeignKey<Radio>(d => d.CarId);
        // });
        //modelBuilder.Entity<Car>()
        //  .HasMany(p => p.Drivers)
        //  .WithMany(p => p.Cars)
        //  .UsingEntity<CarDriver>(
        //     j => j
        //         .HasOne(cd => cd.DriverNavigation)
        //         .WithMany(d => d.CarDrivers)
        //         .HasForeignKey(nameof(CarDriver.DriverId))
        //         .HasConstraintName("FK_InventoryDriver_Drivers_DriverId")
        //         .OnDelete(DeleteBehavior.Cascade),
        //     j => j
        //         .HasOne(cd => cd.CarNavigation)
        //         .WithMany(c => c.CarDrivers)
        //         .HasForeignKey(nameof(CarDriver.CarId))
        //         .HasConstraintName("FK_InventoryDriver_Inventory_InventoryId")
        //         .OnDelete(DeleteBehavior.ClientCascade),
        //     j =>
        //         {
        //             j.HasKey(cd => new { cd.CarId, cd.DriverId });
        //         });
    }

    protected override void ConfigureConventions(ModelConfigurationBuilder configurationBuilder)
    {
        configurationBuilder.Properties<string>().HaveMaxLength(50);
    }
}
