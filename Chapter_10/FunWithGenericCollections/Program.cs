using FunWithGenericCollections;

Console.WriteLine("***** Fun with Generic Collections *****\n");
UseGenericList();
Console.WriteLine();

UseGenericStack();
Console.WriteLine();

UseGenericQueue();
Console.WriteLine();

UsePriorityQueue();
Console.WriteLine();

UseSortedSet();
Console.WriteLine();

UseDictionary();
Console.WriteLine();

Console.ReadLine();
static void UseGenericList()
{
    Console.WriteLine("* Fun with Generic Lists *\n");

    // Make a List of Person objects, filled with
    // collection/object init syntax.
    List<Person> people = new List<Person>()
            {
                new Person {FirstName= "Homer", LastName="Simpson", Age=47},
                new Person {FirstName= "Marge", LastName="Simpson", Age=45},
                new Person {FirstName= "Lisa", LastName="Simpson", Age=9},
                new Person {FirstName= "Bart", LastName="Simpson", Age=8}
            };

    // Print out # of items in List.
    Console.WriteLine("Items in list: {0}", people.Count);

    // Enumerate over list.
    foreach (Person p in people)
    {
        Console.WriteLine(p);
    }

    // Insert a new person.
    Console.WriteLine("\n->Inserting new person.");
    people.Insert(2, new Person { FirstName = "Maggie", LastName = "Simpson", Age = 2 });
    Console.WriteLine("Items in list: {0}", people.Count);

    // Copy data into a new array.
    Person[] arrayOfPeople = people.ToArray();
    foreach (Person p in arrayOfPeople)
    {
        Console.WriteLine("First Names: {0}", p.FirstName);
    }
}
static void UseGenericStack()
{
    Console.WriteLine("* Fun with Generic Stacks *\n");
    Stack<Person> stackOfPeople = new Stack<Person>();
    stackOfPeople.Push(new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 });
    stackOfPeople.Push(new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 });
    stackOfPeople.Push(new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 });

    // Now look at the top item, pop it, and look again.
    Console.WriteLine("First person is: {0}", stackOfPeople.Peek());
    Console.WriteLine("Popped off {0}", stackOfPeople.Pop());
    Console.WriteLine("\nFirst person is: {0}", stackOfPeople.Peek());
    Console.WriteLine("Popped off {0}", stackOfPeople.Pop());
    Console.WriteLine("\nFirst person item is: {0}", stackOfPeople.Peek());
    Console.WriteLine("Popped off {0}", stackOfPeople.Pop());

    try
    {
        Console.WriteLine("\nnFirst person is: {0}", stackOfPeople.Peek());
        Console.WriteLine("Popped off {0}", stackOfPeople.Pop());
    }
    catch (InvalidOperationException ex)
    {
        Console.WriteLine("\nError! {0}", ex.Message);
    }
}
static void UseGenericQueue()
{
    Console.WriteLine("* Fun with Generic Queues *\n");

    // Make a Q with three people.
    Queue<Person> peopleQ = new();
    peopleQ.Enqueue(new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 });
    peopleQ.Enqueue(new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 });
    peopleQ.Enqueue(new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 });

    // Peek at first person in Q.
    Console.WriteLine("{0} is first in line!", peopleQ.Peek().FirstName);

    // Remove each person from Q.
    GetCoffee(peopleQ.Dequeue());
    GetCoffee(peopleQ.Dequeue());
    GetCoffee(peopleQ.Dequeue());
    // Try to de-Q again?
    try
    {
        GetCoffee(peopleQ.Dequeue());
    }
    catch (InvalidOperationException e)
    {
        Console.WriteLine("Error! {0}", e.Message);
    }
    //Local helper function
    static void GetCoffee(Person p)
    {
        Console.WriteLine("{0} got coffee!", p.FirstName);
    }

}
static void UsePriorityQueue()
{
    Console.WriteLine("* Fun with Generic Priority Queues *\n");

    PriorityQueue<Person, int> peopleQ = new();
    peopleQ.Enqueue(new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 }, 1);
    peopleQ.Enqueue(new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 }, 3);
    peopleQ.Enqueue(new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 }, 3);
    peopleQ.Enqueue(new Person { FirstName = "Bart", LastName = "Simpson", Age = 12 }, 2);

    while (peopleQ.Count > 0)
    {
        Console.WriteLine(peopleQ.Dequeue().FirstName); //Displays Lisa
        Console.WriteLine(peopleQ.Dequeue().FirstName); //Displays Bart
        Console.WriteLine(peopleQ.Dequeue().FirstName); //Displays either Marge or Homer
        Console.WriteLine(peopleQ.Dequeue().FirstName); //Displays the other priority 3 item
    }

}
static void UseSortedSet()
{
    Console.WriteLine("* Fun with Sorted Sets *\n");

    // Make some people with different ages.
    SortedSet<Person> setOfPeople = new SortedSet<Person>(new SortPeopleByAge())
            {
                new Person {FirstName= "Homer", LastName="Simpson", Age=47},
                new Person {FirstName= "Marge", LastName="Simpson", Age=45},
                new Person {FirstName= "Lisa", LastName="Simpson", Age=9},
                new Person {FirstName= "Bart", LastName="Simpson", Age=8}
            };

    // Note the items are sorted by age!
    foreach (Person p in setOfPeople)
    {
        Console.WriteLine(p);
    }
    Console.WriteLine();

    // Add a few new people, with various ages.
    setOfPeople.Add(new Person { FirstName = "Saku", LastName = "Jones", Age = 1 });
    setOfPeople.Add(new Person { FirstName = "Mikko", LastName = "Jones", Age = 32 });

    // Still sorted by age!
    foreach (Person p in setOfPeople)
    {
        Console.WriteLine(p);
    }
}
static void UseDictionary()
{
    Console.WriteLine("* Fun with Dictionaries *\n");

    // Populate using Add() method
    Dictionary<string, Person> peopleA = new Dictionary<string, Person>();
    peopleA.Add("Homer", new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 });
    peopleA.Add("Marge", new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 });
    peopleA.Add("Lisa", new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 });

    // Get Homer.
    Person homer = peopleA["Homer"];
    Console.WriteLine(homer);

    // Populate with initialization syntax.
    Dictionary<string, Person> peopleB = new Dictionary<string, Person>()
            {
                { "Homer", new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 } },
                { "Marge", new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 } },
                { "Lisa", new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 } }
            };
    Dictionary<string, Person> peopleC = new Dictionary<string, Person>()
    {
        ["Homer"] = new Person { FirstName = "Homer", LastName = "Simpson", Age = 47 },
        ["Marge"] = new Person { FirstName = "Marge", LastName = "Simpson", Age = 45 },
        ["Lisa"] = new Person { FirstName = "Lisa", LastName = "Simpson", Age = 9 }
    };

    // Get Lisa.
    Person lisa = peopleB["Lisa"];
    Console.WriteLine(lisa);
}

