using CustomEnumerator;

Console.WriteLine("***** Fun with IEnumerable / IEnumerator *****\n");
Garage carLot = new Garage();

// Hand over each car in the collection?
foreach (Car c in carLot)
{
    Console.WriteLine("{0} is going {1} MPH",
        c.PetName, c.CurrentSpeed);
}

// Manually work with IEnumerator.
//Doesn't work with explicit interface implementation
//IEnumerator i = carLot.GetEnumerator();
//i.MoveNext();
//Car myCar = (Car)i.Current;
//Console.WriteLine("{0} is going {1} MPH", myCar?.PetName, myCar?.CurrentSpeed);

