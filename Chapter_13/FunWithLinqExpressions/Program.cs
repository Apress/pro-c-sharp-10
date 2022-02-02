using FunWithLinqExpressions;

Console.WriteLine("***** Fun with Query Expressions *****\n");

// This array will be the basis of our testing...
ProductInfo[] itemsInStock = new[] {
                new ProductInfo{ Name = "Mac's Coffee", Description = "Coffee with TEETH", NumberInStock = 24},
                new ProductInfo{ Name = "Milk Maid Milk", Description = "Milk cow's love", NumberInStock = 100},
                new ProductInfo{ Name = "Pure Silk Tofu", Description = "Bland as Possible", NumberInStock = 120},
                new ProductInfo{ Name = "Crunchy Pops", Description = "Cheezy, peppery goodness", NumberInStock = 2},
                new ProductInfo{ Name = "RipOff Water", Description = "From the tap to your wallet", NumberInStock = 100},
                new ProductInfo{ Name = "Classic Valpo Pizza", Description = "Everyone loves pizza!",  NumberInStock = 73}
            };

SelectEverything(itemsInStock);
GetOverstock(itemsInStock);
PagingWithLINQ(itemsInStock);
PagingWithRanges(itemsInStock);
PagingWithChunks(itemsInStock);
GetNamesAndDescriptions(itemsInStock);
Array objs = GetProjectedSubset(itemsInStock);
foreach (object o in objs)
{
    Console.WriteLine(o); // Calls ToString() on each anonymous object.
}

foreach (ProductInfoSmall item in GetNamesAndDescriptionsTyped(itemsInStock))
{
    Console.WriteLine(item.ToString());
}

GetCountFromQuery();
GetUnenumeratedCount(itemsInStock);
ReverseEverything(itemsInStock);
AlphabetizeProductNames(itemsInStock);
DisplayDiff();
DisplayIntersection();
DisplayUnion();
DisplayConcat();
DisplayDiffBySelector();
DisplayIntersectionBySelector();
DisplayUnionBySelector();
DisplayConcatNoDups();
DisplayConcatNoDupsBySelector();
AggregateOps();
AggregateOpsBySelector(itemsInStock);
Console.ReadLine();

static void SelectEverything(ProductInfo[] products)
{
    // Get everything!
    Console.WriteLine("All product details:");
    var allProducts = from p in products select p;

    foreach (var prod in allProducts)
    {
        Console.WriteLine(prod.ToString());
    }
}
static void GetOverstock(ProductInfo[] products)
{
    Console.WriteLine("The overstock items!");

    // Get only the items where we have more than
    // 25 in stock.
    var overstock = from p in products where p.NumberInStock > 25 select p;

    foreach (ProductInfo c in overstock)
    {
        Console.WriteLine(c.ToString());
    }
}
static void PagingWithLINQ(ProductInfo[] products)
{
    Console.WriteLine("Paging Operations");

    IEnumerable<ProductInfo> list = (from p in products select p).Take(3);
    OutputResults("The first 3", list);
    list = (from p in products select p).TakeWhile(x => x.NumberInStock > 20);
    OutputResults("All while number in stock > 20", list);
    list = (from p in products select p).TakeLast(2);
    OutputResults("The last 2", list);

    list = (from p in products select p).Skip(3);
    OutputResults("Skipping the first 3", list);
    list = (from p in products select p).SkipWhile(x => x.NumberInStock > 20);
    OutputResults("Skip while number in stock > 20", list);
    list = (from p in products select p).SkipLast(2);
    OutputResults("All but the last 2", list);

    list = (from p in products select p).Skip(3).Take(2);
    OutputResults("Skip 3 take 2", list);

    static void OutputResults(string message, IEnumerable<ProductInfo> products)
    {
        Console.WriteLine(message);
        foreach (ProductInfo c in products)
        {
            Console.WriteLine(c.ToString());
        }
    }

}
static void PagingWithRanges(ProductInfo[] products)
{
    Console.WriteLine("Paging Operations");

    IEnumerable<ProductInfo> list = (from p in products select p).Take(..3);
    OutputResults("The first 3", list);

    list = (from p in products select p).Take(3..);
    OutputResults("Skipping the first 3", list);

    list = (from p in products select p).Take(^2..);
    OutputResults("The last 2", list);

    list = (from p in products select p).Take(3..5);
    OutputResults("Skip 3 take 2", list);

    list = (from p in products select p).Take(..^2);
    OutputResults("Skip the last 2", list);

    static void OutputResults(string message, IEnumerable<ProductInfo> products)
    {
        Console.WriteLine(message);
        foreach (ProductInfo c in products)
        {
            Console.WriteLine(c.ToString());
        }
    }
}

static void PagingWithChunks(ProductInfo[] products)
{
    Console.WriteLine("Chunking Operations");

    IEnumerable<ProductInfo[]> chunks = products.Chunk(size:2);
    var counter = 0;
    foreach (var chunk in chunks)
    {
        OutputResults($"Chunk #{++counter}",chunk);
    }
    static void OutputResults(string message, IEnumerable<ProductInfo> products)
    {
        Console.WriteLine(message);
        foreach (ProductInfo c in products)
        {
            Console.WriteLine(c.ToString());
        }
    }
}

static void GetNamesAndDescriptions(ProductInfo[] products)
{
    Console.WriteLine("Names and Descriptions:");
    var nameDesc = from p in products select new { p.Name, p.Description };

    foreach (var item in nameDesc)
    {
        // Could also use Name and Description properties directly.
        Console.WriteLine(item.ToString());
    }
}
static Array GetProjectedSubset(ProductInfo[] products)
{
    var nameDesc =
        from p in products select new { p.Name, p.Description };

    // Map set of anonymous objects to an Array object.
    return nameDesc.ToArray();
}
static IEnumerable<ProductInfoSmall> GetNamesAndDescriptionsTyped(ProductInfo[] products)
{
    Console.WriteLine("Names and Descriptions:");
    IEnumerable<ProductInfoSmall> nameDesc =
        from p
            in products
        select new ProductInfoSmall { Name = p.Name, Description = p.Description };
    return nameDesc;
}
static void GetCountFromQuery()
{
    string[] currentVideoGames = { "Morrowind", "Uncharted 2", "Fallout 3", "Daxter", "System Shock 2" };

    // Get count from the query.
    int numb = (from g in currentVideoGames where g.Length > 6 select g).Count();

    // Print out the number of items.
    Console.WriteLine("{0} items honor the LINQ query.", numb);
}

static void GetUnenumeratedCount(ProductInfo[] products)
{
    Console.WriteLine("Get Unenumeratord Count");
    IEnumerable<ProductInfo> query = from p in products select p;
    var result = query.TryGetNonEnumeratedCount(out int count);
    if (result)
    {
        Console.WriteLine($"Total count:{count}");
    }
    else
    {
        Console.WriteLine("Try Get Failed");
    }
    var newResult = GetProduct(products).TryGetNonEnumeratedCount(out int newCount);
    if (newResult)
    {
        Console.WriteLine($"Total count:{newCount}");
    }
    else
    {
        Console.WriteLine("Try Get Failed");
    }
    static IEnumerable<ProductInfo> GetProduct(ProductInfo[] products)
    {
        for (int i = 0;i < products.Count();i++)
        {
            yield return products[i];
        }
    }
}
static void ReverseEverything(ProductInfo[] products)
{
    Console.WriteLine("Product in reverse:");
    var allProducts = from p in products select p;
    foreach (var prod in allProducts.Reverse())
    {
        Console.WriteLine(prod.ToString());
    }
}
static void AlphabetizeProductNames(ProductInfo[] products)
{
    // Get names of products, alphabetized.
    var subset = from p in products orderby p.Name select p;

    Console.WriteLine("Ordered by Name:");
    foreach (var p in subset)
    {
        Console.WriteLine(p.ToString());
    }
}
static void DisplayDiff()
{
    List<string> myCars = new List<String> { "Yugo", "Aztec", "BMW" };
    List<string> yourCars = new List<String> { "BMW", "Saab", "Aztec" };

    var carDiff = (from c in myCars select c).Except(from c2 in yourCars select c2);

    Console.WriteLine("Here is what you don't have, but I do:");
    foreach (string s in carDiff)
    {
        Console.WriteLine(s); // Prints Yugo.
    }
}

static void DisplayIntersection()
{
    List<string> myCars = new List<String> { "Yugo", "Aztec", "BMW" };
    List<string> yourCars = new List<String> { "BMW", "Saab", "Aztec" };

    // Get the common members.
    var carIntersect = (from c in myCars select c).Intersect(from c2 in yourCars select c2);

    Console.WriteLine("Here is what we have in common:");
    foreach (string s in carIntersect)
    {
        Console.WriteLine(s); // Prints Aztec and BMW.
    }
}
static void DisplayUnion()
{
    List<string> myCars = new List<String> { "Yugo", "Aztec", "BMW" };
    List<string> yourCars = new List<String> { "BMW", "Saab", "Aztec" };

    // Get the union of these containers.
    var carUnion = (from c in myCars select c).Union(from c2 in yourCars select c2);

    Console.WriteLine("Here is everything:");
    foreach (string s in carUnion)
    {
        Console.WriteLine(s); // Prints all common members.
    }
}
static void DisplayDiffBySelector()
{
    var first = new (string Name, int Age)[] { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40) };
    var second = new (string Name, int Age)[] { ("Claire", 30), ("Pat", 30), ("Drew", 33) };
    var result = first.ExceptBy(second.Select(x=>x.Age), product => product.Age); // }
    Console.WriteLine("Except for by selector:");
    foreach (var item in result)
    {
        Console.WriteLine(item); // { ("Francis", 20), ("Ashley", 40) }
    }
}
static void DisplayIntersectionBySelector()
{
    var first = new (string Name, int Age)[] { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40) };
    var second = new (string Name, int Age)[] { ("Claire", 30), ("Pat", 30), ("Drew", 33) };
    //var result = first.IntersectBy(second.Select(x=>x.Age), person => person.Age); 
    var result = second.IntersectBy(first.Select(x=>x.Age), person => person.Age); 
    Console.WriteLine("Intersection by selector:");
    foreach (var item in result)
    {
        Console.WriteLine(item); // { ("Lindsey", 30) }
    }
}
static void DisplayUnionBySelector()
{
    var first = new (string Name, int Age)[] { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40) };
    var second = new (string Name, int Age)[] { ("Claire", 30), ("Pat", 30), ("Drew", 33) };
    var result = first.UnionBy(second, person => person.Age); 
    Console.WriteLine("Union by selector:");
    foreach (var item in result)
    {
        Console.WriteLine(item); // { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40), ("Drew", 33) };
    }
}
static void DisplayConcat()
{
    List<string> myCars = new List<String> { "Yugo", "Aztec", "BMW" };
    List<string> yourCars = new List<String> { "BMW", "Saab", "Aztec" };

    var carConcat = (from c in myCars select c).Concat(from c2 in yourCars select c2);

    // Prints:
    // Yugo Aztec BMW BMW Saab Aztec.
    foreach (string s in carConcat)
    {
        Console.WriteLine(s);
    }
}
static void DisplayConcatNoDups()
{
    List<string> myCars = new List<String> { "Yugo", "Aztec", "BMW" };
    List<string> yourCars = new List<String> { "BMW", "Saab", "Aztec" };

    var carConcat = (from c in myCars select c).Concat(from c2 in yourCars select c2);

    // Prints:
    // Yugo Aztec BMW Saab.
    foreach (string s in carConcat.Distinct())
    {
        Console.WriteLine(s);
    }
}
static void DisplayConcatNoDupsBySelector()
{
    var first = new (string Name, int Age)[] { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40) };
    var second = new (string Name, int Age)[] { ("Claire", 30), ("Pat", 30), ("Drew", 33) };
    var result = first.Concat(second).DistinctBy(x=>x.Age); 
    Console.WriteLine("Distinct by selector:");
    foreach (var item in result)
    {
        Console.WriteLine(item); // { ("Francis", 20), ("Lindsey", 30), ("Ashley", 40), ("Drew", 33) };
    }
}

static void AggregateOps()
{
    double[] winterTemps = { 2.0, -21.3, 8, -4, 0, 8.2 };

    // Various aggregation examples.
    Console.WriteLine("Max temp: {0}", (from t in winterTemps select t).Max());

    Console.WriteLine("Min temp: {0}", (from t in winterTemps select t).Min());

    Console.WriteLine("Average temp: {0}", (from t in winterTemps select t).Average());

    Console.WriteLine("Sum of all temps: {0}", (from t in winterTemps select t).Sum());
}
static void AggregateOpsBySelector(ProductInfo[] products)
{
    // Various aggregation examples.
    Console.WriteLine("Max by In Stock: {0}", products.MaxBy(x=>x.NumberInStock));
    Console.WriteLine("Min temp: {0}", products.MinBy(x=>x.NumberInStock));
}
