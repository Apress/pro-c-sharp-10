using System.Collections;

namespace CustomEnumerator;
class Garage : IEnumerable
{
    private Car[] carArray = new Car[4];

    // Fill with some Car objects upon startup.
    public Garage()
    {
        carArray[0] = new Car("Rusty", 30);
        carArray[1] = new Car("Clunker", 55);
        carArray[2] = new Car("Zippy", 30);
        carArray[3] = new Car("Fred", 30);
    }
    // Return the array object's IEnumerator.
    //public IEnumerator GetEnumerator() 
    //    => carArray.GetEnumerator();

    // Return the array object's IEnumerator.
    //Use explicit interface implementation to hide the method from callers
    IEnumerator IEnumerable.GetEnumerator()
        => carArray.GetEnumerator();
}
