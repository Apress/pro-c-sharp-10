using AutoLot.Dal.Models;
using AutoLot.Dal.DataOperations;
using AutoLot.Dal.BulkImport;

InventoryDal dal = new InventoryDal();
List<CarViewModel> list = dal.GetAllInventory();
Console.WriteLine(" ************** All Cars ************** ");
Console.WriteLine("CarId\tMake\tColor\tPet Name");
foreach (var itm in list)
{
    Console.WriteLine($"{itm.Id}\t{itm.Make}\t{itm.Color}\t{itm.PetName}");
}
Console.WriteLine();
CarViewModel car = dal.GetCar(list.OrderBy(x => x.Color).Select(x => x.Id).First());
Console.WriteLine(" ************** First Car By Color ************** ");
Console.WriteLine("CarId\tMake\tColor\tPet Name");
Console.WriteLine($"{car.Id}\t{car.Make}\t{car.Color}\t{car.PetName}");

try
{
    dal.DeleteCar(5);
    Console.WriteLine("Car deleted.");
}
catch (Exception ex)
{
    Console.WriteLine($"An exception occurred: {ex.Message}");
}
dal.InsertAuto(new Car { Color = "Blue", MakeId = 5, PetName = "TowMonster" });
list = dal.GetAllInventory();
CarViewModel newCar = list.First(x => x.PetName == "TowMonster");
Console.WriteLine(" ************** New Car ************** ");
Console.WriteLine("CarId\tMake\tColor\tPet Name");
Console.WriteLine($"{newCar.Id}\t{newCar.Make}\t{newCar.Color}\t{newCar.PetName}");
dal.DeleteCar(newCar.Id);
var petName = dal.LookUpPetName(car.Id);
Console.WriteLine(" ************** New Car ************** ");
Console.WriteLine($"Car pet name: {petName}");
FlagCustomer();
DoBulkCopy();
Console.Write("Press enter to continue...");
Console.ReadLine();

void FlagCustomer()
{
    Console.WriteLine("***** Simple Transaction Example *****\n");

    // A simple way to allow the tx to succeed or not.
    bool throwEx = true;

    Console.Write("Do you want to throw an exception (Y or N): ");
    var userAnswer = Console.ReadLine();
    if (string.IsNullOrEmpty(userAnswer) || userAnswer.Equals("N", StringComparison.OrdinalIgnoreCase))
    {
        throwEx = false;
    }

    var dal = new InventoryDal();

    // Process customer 1 – enter the id for the customer to move.
    dal.ProcessCreditRisk(throwEx, 1);
    Console.WriteLine("Check CreditRisk table for results");
    Console.ReadLine();
}

void DoBulkCopy()
{
    Console.WriteLine(" ************** Do Bulk Copy ************** ");
    var cars = new List<Car>
            {
                new Car() {Color = "Blue", MakeId = 1, PetName = "MyCar1"},
                new Car() {Color = "Red", MakeId = 2, PetName = "MyCar2"},
                new Car() {Color = "White", MakeId = 3, PetName = "MyCar3"},
                new Car() {Color = "Yellow", MakeId = 4, PetName = "MyCar4"}
            };
    ProcessBulkImport.ExecuteBulkImport(cars, "Inventory");
    InventoryDal dal = new InventoryDal();
    List<CarViewModel> list = dal.GetAllInventory();
    Console.WriteLine(" ************** All Cars ************** ");
    Console.WriteLine("CarId\tMake\tColor\tPet Name");
    foreach (var itm in list)
    {
        Console.WriteLine($"{itm.Id}\t{itm.Make}\t{itm.Color}\t{itm.PetName}");
    }
    Console.WriteLine();
}