using AutoLot.Services.DataServices.Api.Examples;

var builder = WebApplication.CreateBuilder(args);
//Configure logging
builder.ConfigureSerilog();
builder.Services.RegisterLoggingInterfaces();

// Add services to the container.
builder.Services.AddRazorPages();
var connectionString = builder.Configuration.GetConnectionString("AutoLot");
builder.Services.AddDbContextPool<ApplicationDbContext>(
    options => options.UseSqlServer(connectionString,
        sqlOptions => sqlOptions.EnableRetryOnFailure().CommandTimeout(60)));
builder.Services.AddRepositories();
builder.Services.AddDataServices(builder.Configuration);
builder.Services.Configure<DealerInfo>(builder.Configuration.GetSection(nameof(DealerInfo)));

//builder.Services.AddHttpClient();
//builder.Services.AddHttpClient(NamedUsageWithIHttpClientFactory.API_NAME, client =>
//{
//    //add any configuration here
//});
//builder.Services.AddHttpClient<IApiServiceWrapper,ApiServiceWrapper>(client =>
//{
//    //configuration goes here
//});
builder.Services.ConfigureApiServiceWrapper(builder.Configuration);

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    if (app.Configuration.GetValue<bool>("RebuildDataBase"))
    {
        using var scope = app.Services.CreateScope();
        var dbContext = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
        SampleDataInitializer.ClearAndReseedDatabase(dbContext);
    }
}
else
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
