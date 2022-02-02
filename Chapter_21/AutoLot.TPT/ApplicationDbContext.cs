using AutoLot.TPT.Models;
using Microsoft.EntityFrameworkCore;

namespace AutoLot.TPT;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
    {
    }
    public DbSet<Car> Cars { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<BaseEntity>().ToTable("BaseEntities");
        modelBuilder.Entity<Car>().ToTable("Cars");
    }

}

