global using System.Text.Json;
global using System.Text.Json.Serialization;
global using System.Xml;
global using System.Xml.Serialization;

using SimpleSerialize;

Console.WriteLine("***** Fun with Object Serialization *****\n");

var theRadio = new Radio
{
    StationPresets = new() { 89.3, 105.1, 97.1 },
    HasTweeters = true
};
// Make a JamesBondCar and set state.
JamesBondCar jbc = new()
{
    CanFly = true,
    CanSubmerge = false,
    TheRadio = new()
    {
        StationPresets = new() { 89.3, 105.1, 97.1 },
        HasTweeters = true
    }
};

List<JamesBondCar> myCars = new()
{
    new JamesBondCar { CanFly = true, CanSubmerge = true, TheRadio = theRadio },
    new JamesBondCar { CanFly = true, CanSubmerge = false, TheRadio = theRadio },
    new JamesBondCar { CanFly = false, CanSubmerge = true, TheRadio = theRadio },
    new JamesBondCar { CanFly = false, CanSubmerge = false, TheRadio = theRadio },
};

Person p = new Person
{
    FirstName = "James",
    IsAlive = true
};

// XML
SaveAsXmlFormat(jbc, "CarData.xml");
Console.WriteLine("=> Saved car in XML format!");

SaveAsXmlFormat(p, "PersonData.xml");
Console.WriteLine("=> Saved person in XML format!");

SaveAsXmlFormat(myCars, "CarCollection.xml");
Console.WriteLine("=> Saved list of cars!");

JamesBondCar savedCar = ReadAsXmlFormat<JamesBondCar>("CarData.xml");
Console.WriteLine("Original Car:\t {0}", jbc.ToString());
Console.WriteLine("Read Car:\t {0}", savedCar.ToString());

List<JamesBondCar> savedCars = ReadAsXmlFormat<List<JamesBondCar>>("CarCollection.xml");

foreach (var c in savedCars)
{
    System.Console.WriteLine(c.ToString());
}

// JSON
JsonSerializerOptions options = new()
{
    PropertyNameCaseInsensitive = true,
    //PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
    PropertyNamingPolicy = null,
    IncludeFields = true,
    WriteIndented = true,
    NumberHandling = JsonNumberHandling.AllowReadingFromString | JsonNumberHandling.WriteAsString,
    ReferenceHandler = ReferenceHandler.IgnoreCycles
};

// JsonSerializerOptions options = new(JsonSerializerDefaults.Web)
// {
//     IncludeFields = true,
//     WriteIndented = true,
// };

//SaveAsJsonFormat(jbc, "CarData.json");
SaveAsJsonFormat(options, jbc, "CarData.json");
Console.WriteLine("=> Saved car in JSON format!");

//SaveAsJsonFormat(p, "PersonData.json");
SaveAsJsonFormat(options, p, "PersonData.json");
Console.WriteLine("=> Saved person in JSON format!");

SaveAsJsonFormat(options, myCars, "CarCollection.json");

// JsonSerializerOptions options2 = new()
// {
//     //PropertyNameCaseInsensitive = true,
//     //PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
//     PropertyNamingPolicy = null,
//     IncludeFields = true,
//     WriteIndented = true,
//     NumberHandling = JsonNumberHandling.AllowReadingFromString | JsonNumberHandling.WriteAsString
// };

Animal savedPersonNowAnimal = ReadAsJsonFormat<Animal>(options, "PersonData.json");
Console.WriteLine("Person now animal: {0}", savedPersonNowAnimal);

//JamesBondCar savedJsonCar = ReadAsJsonFormat<JamesBondCar>("CarData.json");
JamesBondCar savedJsonCar = ReadAsJsonFormat<JamesBondCar>(options, "CarData.json");
Console.WriteLine("Original Car:\t {0}", jbc.ToString());
Console.WriteLine("Read Car:\t {0}", savedJsonCar.ToString());

//List<JamesBondCar> savedJsonCars = ReadAsJsonFormat<List<JamesBondCar>>("CarCollection.json");
List<JamesBondCar> savedJsonCars = ReadAsJsonFormat<List<JamesBondCar>>(options, "CarCollection.json");
foreach (var c in savedJsonCars)
{
    System.Console.WriteLine(c.ToString());
}

HandleNullStrings();
SerializeAsync();
DeserializeAsync();

Console.ReadLine();

static void SaveAsXmlFormat<T>(T objGraph, string fileName)
{
    // Create a typed instance of the XmlSerializer
    XmlSerializer xmlFormat = new XmlSerializer(typeof(T));

    using (Stream fStream = new FileStream(fileName,
      FileMode.Create, FileAccess.Write, FileShare.None))
    {
        xmlFormat.Serialize(fStream, objGraph);
    }
}

static T ReadAsXmlFormat<T>(string fileName)
{
    // Save object to a file in XML format.
    XmlSerializer xmlFormat = new XmlSerializer(typeof(T));

    using (Stream fStream = new FileStream(fileName, FileMode.Open))
    {
        T obj = default;
        obj = (T)xmlFormat.Deserialize(fStream);
        return obj;
    }
}

// static void SaveAsJsonFormat<T>(T objGraph, string fileName) 
// => File.WriteAllText(fileName, System.Text.Json.JsonSerializer.Serialize(objGraph));

static void SaveAsJsonFormat<T>(JsonSerializerOptions options, T objGraph, string fileName)
=> File.WriteAllText(fileName, System.Text.Json.JsonSerializer.Serialize(objGraph, options));

// static T ReadAsJsonFormat<T>(string fileName) 
// => System.Text.Json.JsonSerializer.Deserialize<T>(File.ReadAllText(fileName));

static T ReadAsJsonFormat<T>(JsonSerializerOptions options, string fileName)
=> System.Text.Json.JsonSerializer.Deserialize<T>(File.ReadAllText(fileName), options);

static void HandleNullStrings()
{
    Console.WriteLine("Handling Null Strings");
    var options = new JsonSerializerOptions
    {
        PropertyNameCaseInsensitive = true,
        PropertyNamingPolicy = null,
        IncludeFields = true,
        WriteIndented = true,
        Converters = { new JsonStringNullToEmptyConverter() },
    };
    var radio = new Radio
    {
        HasSubWoofers = true,
        HasTweeters = true,
        RadioId = null
    };
    var json = JsonSerializer.Serialize(radio, options);
    Console.WriteLine(json);
}

static async IAsyncEnumerable<int> PrintNumbers(int n)
{
    for (int i = 0; i < n; i++)
    {
        yield return i;
    }
}

async static void SerializeAsync()
{
    Console.WriteLine("Async Serialization");
    using Stream stream = Console.OpenStandardOutput();
    var data = new { Data = PrintNumbers(3) };
    await JsonSerializer.SerializeAsync(stream, data);
    Console.WriteLine();
}

async static void DeserializeAsync()
{
    Console.WriteLine("Async Deserialization");
    var stream = new MemoryStream(System.Text.Encoding.UTF8.GetBytes("[0,1,2,3,4]"));
    await foreach (int item in JsonSerializer.DeserializeAsyncEnumerable<int>(stream))
    {
        Console.Write(item);
    }
    Console.WriteLine();
}

