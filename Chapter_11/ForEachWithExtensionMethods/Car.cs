using System;

namespace ForEachWithExtensionMethods
{
    class Car
    {
        // Car properties.
        public int CurrentSpeed {get; set;} = 0;
        public string PetName {get; set;} = "";

        // Constructors.
        public Car() {}
        public Car(string name, int speed)
        {
            CurrentSpeed = speed;
            PetName = name;
        }

        // See if Car has overheated.
    }
}
