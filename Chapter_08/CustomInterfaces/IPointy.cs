namespace CustomInterfaces;
interface IPointy
{
    // Implicitly public and abstract.
    //byte GetNumberOfPoints();

    // Error! Interfaces cannot have data fields!
    //public int numbOfPoints;

    // Error! Interfaces do not have constructors!
    //public IPointy() { numbOfPoints = 0;}

    // A read-write property in an interface would look like:
    //string PropName { get; set; }

    // a read-only property in an interface would be:
    byte Points { get; }
}
