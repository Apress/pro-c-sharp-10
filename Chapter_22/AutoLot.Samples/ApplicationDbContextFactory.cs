namespace AutoLot.Samples;

public class ApplicationDbContextFactory : IDesignTimeDbContextFactory<ApplicationDbContext>
{
    public ApplicationDbContext CreateDbContext(string[] args)
    {
        var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
        var connectionString = @"server=.,5433;Database=AutoLotSamples;User Id=sa;Password=P@ssw0rd;";
        //var connectionString = @"server=(localdb)\mssqllocaldb;Database=AutoLotSamples;Trusted_Connection=true";
        if (args != null && args.Length == 1 && args[0].Equals("lazy", StringComparison.OrdinalIgnoreCase))
        {
            optionsBuilder = optionsBuilder.UseLazyLoadingProxies();
        }
        optionsBuilder = optionsBuilder.UseSqlServer(connectionString);
        Console.WriteLine(connectionString);
        return new ApplicationDbContext(optionsBuilder.Options);
    }
}
