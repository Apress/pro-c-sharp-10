namespace PublicDelegateProblem;
public class Car
{
    public delegate void CarEngineHandler(string msgForCaller);

    // Now a public member!
    public CarEngineHandler ListOfHandlers;

    // Just fire out the Exploded notification.
    public void Accelerate(int delta)
    {
        if (ListOfHandlers != null)
        {
            ListOfHandlers("Sorry, this car is dead...");
        }
    }
}
