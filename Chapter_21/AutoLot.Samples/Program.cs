using AutoLot.Samples.CompiledModels;

//var context = new ApplicationDbContextFactory().CreateDbContext(null);
//context.Makes.Add(new Make { Name = "Lemon" });
//context.SaveChanges();

Console.WriteLine("Fun with Entity Framework Core");
SampleSaveChanges();
TransactedSaveChanges();
UsingSavePoints();
TransactionWithExecutionStrategies();
QueryExecution();
TrackingNoTracking();
UseCompiledDbContext();

static void SampleSaveChanges()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    //make some changes
    context.SaveChanges();
}

static void TransactedSaveChanges()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    using var trans = context.Database.BeginTransaction();
    try
    {
        //Create, change, delete stuff
        context.SaveChanges();
        trans.Commit();
    }
    catch (Exception ex)
    {
        trans.Rollback();
    }
}

static void UsingSavePoints()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    using var trans = context.Database.BeginTransaction();
    try
    {
        //Create, change, delete stuff
        trans.CreateSavepoint("check point 1");
        context.SaveChanges();
        trans.Commit();
    }
    catch (Exception ex)
    {
        trans.RollbackToSavepoint("check point 1");
    }
}

static void TransactionWithExecutionStrategies()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    var strategy = context.Database.CreateExecutionStrategy();
    strategy.Execute(() =>
    {
        using var trans = context.Database.BeginTransaction();
        try
        {
            //actionToExecute();
            trans.Commit();
            Console.WriteLine("Insert succeeded");
        }
        catch (Exception ex)
        {
            trans.Rollback();
            Console.WriteLine($"Insert failed: {ex.Message}");
        }
    });
}

static void QueryExecution()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    var cars = context.Cars.Where(x => x.Color == "Yellow");
    var listOfCars = context.Cars.Where(x => x.Color == "Yellow").ToList();
    var query = context.Cars.AsQueryable();
    query = query.Where(x => x.Color == "Yellow");
    var moreCars = query.ToList();
}

static void TrackingNoTracking()
{
    //The factory is not meant to be used like this, but it’s demo code :-)
    var context = new ApplicationDbContextFactory().CreateDbContext(null);
    var untrackedCar = context.Cars.Where(x => x.Id == 1).AsNoTracking();
    var untrackedWithIdResolution = context.Cars.Where(x => x.Id == 1).AsNoTrackingWithIdentityResolution();
}

static void UseCompiledDbContext()
{
    var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
    var connectionString = @"server=.,5433;Database=AutoLotSamples;User Id=sa;Password=P@ssw0rd;Encrypt=False;";
    optionsBuilder.UseSqlServer(connectionString).UseModel(ApplicationDbContextModel.Instance);
    Console.WriteLine(connectionString);
    var context = new ApplicationDbContext(optionsBuilder.Options);
}