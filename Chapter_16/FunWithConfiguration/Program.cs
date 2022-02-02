using Microsoft.Extensions.Configuration;

IConfiguration config = new ConfigurationBuilder()
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.json", true, true)
    .AddJsonFile("appsettings.development.json", true, true)
    .Build();
Console.WriteLine($"My car's name is {config["CarName"]}");
Console.WriteLine($"My car's name is {config["CarName2"]}");
Console.WriteLine($"CarName2 is null? {config["CarName2"] == null}");


Console.WriteLine($"My car's name is {config.GetValue(typeof(string), "CarName")}");
Console.WriteLine($"My car's name is {config.GetValue<string>("CarName")}");

Console.WriteLine($"My car's name is {config.GetValue(typeof(string), "CarName2")}");
Console.WriteLine($"My car's name is {config.GetValue<string>("CarName2")}");

Console.WriteLine($"My car's name is {config.GetValue<int>("CarName2")}");
try
{
    Console.WriteLine($"My car's name is {config.GetValue<int>("CarName")}");
}
catch (InvalidOperationException ex)
{
    Console.WriteLine($"An exception occurred: {ex.Message}");
}


Console.Write($"My car object is a {config["Car:Color"]} ");
Console.WriteLine($"{config["Car:Make"]} named {config["Car:PetName"]}");

IConfigurationSection section = config.GetSection("Car");
Console.Write($"My car object is a {section["Color"]} ");
Console.WriteLine($"{section["Make"]} named {section["PetName"]}");


var c = new Car();
section.Bind(c);

Console.Write($"My car object is a {c.Color} ");
Console.WriteLine($"{c.Make} named {c.PetName}");

var notFoundCar = new Car
{
    Color = "Red"
};
config.GetSection("Car2").Bind(notFoundCar);
Console.Write($"My car object is a {notFoundCar.Color} ");
Console.WriteLine($"{notFoundCar.Make} named {notFoundCar.PetName}");

var carFromGet = config.GetSection(nameof(Car)).Get(typeof(Car)) as Car;
Console.Write($"My car object (using Get()) is a {carFromGet.Color} ");
Console.WriteLine($"{carFromGet.Make} named {carFromGet.PetName}");


var notFoundCarFromGet = config.GetSection("Car2").Get(typeof(Car));
Console.WriteLine($"The not found car is null? {notFoundCarFromGet == null}");

var carFromGet2 = config.GetSection(nameof(Car)).Get<Car>();
Console.Write($"My car object (using Get()) is a {carFromGet.Color} ");
Console.WriteLine($"{carFromGet.Make} named {carFromGet.PetName}");

var notFoundCarFromGet2 = config.GetSection("Car2").Get<Car>();
Console.WriteLine($"The not found car is null? {notFoundCarFromGet2 == null}");

var carFromGet3 = config.GetSection(nameof(Car)).Get<Car>(t=>t.BindNonPublicProperties=true);


try
{
    _ = config
        .GetSection(nameof(Car))
        .Get<Car>(t=>t.ErrorOnUnknownConfiguration=true);
}
catch (InvalidOperationException ex)
{
    Console.WriteLine($"An exception occurred: {ex.Message}");
}

try
{
    config.GetRequiredSection("Car2").Bind(notFoundCar);
}
catch (InvalidOperationException ex)
{
    Console.WriteLine($"An exception occurred: {ex.Message}");
}

Console.ReadLine();



public class Car
{
    public string Make { get; set; }
    public string Color { get; set; }
    public string PetName { get; set; }
}
