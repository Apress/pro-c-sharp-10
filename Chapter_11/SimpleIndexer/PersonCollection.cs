using System.Collections;

namespace SimpleIndexer;
public class PersonCollection : IEnumerable
{
    private ArrayList arPeople = new ArrayList();

    // Cast for caller.
    public Person GetPerson(int pos) => (Person)arPeople[pos];

    // Only insert Person types.
    public void AddPerson(Person p)
    { arPeople.Add(p); }

    public void ClearPeople()
    { arPeople.Clear(); }

    public int Count => arPeople.Count;

    // Foreach enumeration support.
    IEnumerator IEnumerable.GetEnumerator() => arPeople.GetEnumerator();

    // Custom indexer for this class.
    public Person this[int index]
    {
        get => (Person)arPeople[index];
        set => arPeople.Insert(index, value);
    }
}
