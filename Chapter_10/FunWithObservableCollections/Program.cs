using System.Collections.ObjectModel;
using System.Collections.Specialized;
using FunWithObservableCollections;

// Make a collection to observe and add a few Person objects.
ObservableCollection<Person> people = new ObservableCollection<Person>()
                {
                    new Person {FirstName = "Peter", LastName = "Murphy", Age = 52},
                    new Person {FirstName = "Kevin", LastName = "Key", Age = 48},
                };

// Wire up the CollectionChanged event.
people.CollectionChanged += people_CollectionChanged;

// Now add a new item.
people.Add(new Person("Fred", "Smith", 32));

// Remove an item.
people.RemoveAt(0);

Console.ReadLine();

static void people_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
{
    // What was the action that caused the event?
    Console.WriteLine("Action for this event: {0}", e.Action);

    // They removed something.
    if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Remove)
    {
        Console.WriteLine("Here are the OLD items:");
        foreach (Person p in e.OldItems)
        {
            Console.WriteLine(p.ToString());
        }
        Console.WriteLine();
    }

    // They added something.
    if (e.Action == System.Collections.Specialized.NotifyCollectionChangedAction.Add)
    {
        // Now show the NEW items that were inserted.
        Console.WriteLine("Here are the NEW items:");
        foreach (Person p in e.NewItems)
        {
            Console.WriteLine(p.ToString());
        }
    }
}