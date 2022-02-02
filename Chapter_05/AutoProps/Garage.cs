namespace AutoProps;
class Garage
{

    // The hidden int backing field is set to zero!
    public int NumberOfCars { get; set; } = 1;

    // The hidden Car backing field is set to null!
    public Car MyAuto { get; set; } = new Car();

    public Garage()
    {
        //MyAuto = new Car();
        //NumberOfCars = 1;
    }
    public Garage(Car car, int number)
    {
        MyAuto = car;
        NumberOfCars = number;
    }
}
