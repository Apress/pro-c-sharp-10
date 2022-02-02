using System.Collections;

namespace ForEachWithExtensionMethods
{
    static class GarageExtensions
    {
        public static IEnumerator GetEnumerator(this Garage g) 
        => g.CarsInGarage.GetEnumerator();
    }
}
