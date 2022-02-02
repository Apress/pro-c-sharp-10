namespace CustomInterfaces;
abstract class Shape
{
    protected Shape(string name = "NoName")
    {
        PetName = name;
    }

    public string PetName { get; set; }

    // A single virtual method.
    //public virtual void Draw()
    //{
    //    Console.WriteLine("Inside Shape.Draw()");
    //}
    public abstract void Draw();
    //public abstract byte GetNumberOfPoints();
}
