using Employees;
Console.WriteLine("***** The Employee Class Hierarchy *****\n");
SalesPerson fred = new SalesPerson
{
    Age = 31,
    Name = "Fred",
    SalesNumber = 50
};

Manager chucky = new Manager("Chucky", 50, 92, 100000, "333-23-2322", 9000);
chucky.GiveBonus(300);
chucky.DisplayStats();
Console.WriteLine();

SalesPerson fran = new SalesPerson("Fran", 43, 93, 3000, "932-32-3232", 31);
fran.GiveBonus(200);
fran.DisplayStats();
Console.WriteLine();

double cost = chucky.GetBenefitCost();
Console.WriteLine($"Benefit Cost: {cost}");

Employee.BenefitPackage.BenefitPackageLevel myBenefitLevel =
    Employee.BenefitPackage.BenefitPackageLevel.Platinum;

 CastingExamples();
 Console.ReadLine();

static void CastingExamples()
{
    // A Manager "is-a" System.Object, so we can
    // store a Manager reference in an object variable just fine.
    object frank = new Manager("Frank Zappa", 9, 3000, 40000, "111-11-1111", 5);
    GivePromotion((Manager)frank);

    // A Manager "is-an" Employee too.
    Employee moonUnit = new Manager("MoonUnit Zappa", 2, 3001, 20000, "101-11-1321", 1);
    GivePromotion(moonUnit);

    // A PtSalesPerson "is-a" SalesPerson.
    SalesPerson jill = new PtSalesPerson("Jill", 834, 3002, 100000, "111-12-1119", 90);
    GivePromotion(jill);

}

static void GivePromotion(Employee emp)
{
    // Increase pay...
    // Give new parking space in company garage...

    Console.WriteLine("{0} was promoted!", emp.Name);
    // if (emp is SalesPerson)
    // {
    //    Console.WriteLine("{0} made {1} sale(s)!", emp.Name,
    //        ((SalesPerson)emp).SalesNumber);
    //    Console.WriteLine();
    // }
    // if (emp is Manager)
    // {
    //    Console.WriteLine("{0} had {1} stock options...", emp.Name,
    //        ((Manager)emp).StockOptions);
    //    Console.WriteLine();
    // }
    // Check if is SalesPerson, assign to variable s
    // if (emp is SalesPerson s)
    // {
    //    Console.WriteLine("{0} made {1} sale(s)!", s.Name, s.SalesNumber);
    //    Console.WriteLine();
    // }
    // //Check if is Manager, if it is, assign to variable m
    // else if (emp is Manager m)
    // {
    //    Console.WriteLine("{0} had {1} stock options...", m.Name, m.StockOptions);
    //    Console.WriteLine();
    // }
    // else if (emp is var _)
    // {
    //    Console.WriteLine("Unable to promote {0}. Wrong employee type", emp.Name);
    //    Console.WriteLine();
    // }
    // if (emp is not Manager and not SalesPerson)
    //  {
    //     Console.WriteLine("Unable to promote {0}. Wrong employee type", emp.Name);
    //     Console.WriteLine();
    //  }

    Console.WriteLine("{0} was promoted!", emp.Name);
    switch (emp)
    {
        case SalesPerson s when s.SalesNumber > 5:
            Console.WriteLine("{0} made {1} sale(s)!", emp.Name, s.SalesNumber);
            break;
        case Manager m:
            Console.WriteLine("{0} had {1} stock options...", emp.Name, m.StockOptions);
            break;
        case Employee _:
            Console.WriteLine("Unable to promote {0}. Wrong employee type", emp.Name);
            break;

    }
    Console.WriteLine();
}
