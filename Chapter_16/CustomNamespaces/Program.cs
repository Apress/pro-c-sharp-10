// Resolve the ambiguity using a custom alias.
using The3DHexagon = CustomNamespaces.My3DShapes.Hexagon;
using ThreeD = CustomNamespaces.My3DShapes;
using CustomNamespaces.MyShapes;

//CustomNamespaces.MyShapes.Hexagon h = new CustomNamespaces.MyShapes.Hexagon();
//CustomNamespaces.MyShapes.Circle c = new CustomNamespaces.MyShapes.Circle();
//CustomNamespaces.MyShapes.Square s = new CustomNamespaces.MyShapes.Square();
Hexagon h = new Hexagon();
Circle c = new Circle();
Square s = new Square();
// This is really creating a My3DShapes.Hexagon class.
The3DHexagon h1 = new The3DHexagon();
// And so is this
ThreeD.Hexagon h2 = new ThreeD.Hexagon();

//Original code from the project template
//namespace CustomNamespaces
//{
//    class Program
//    {
//        static void Main(string[] args)
//        {
//            Console.WriteLine("Hello World!");
//        }
//    }
//}

