using System.ComponentModel;

Console.WriteLine("***** Fun With Record Structs *****");
var rs = new Point(2, 4, 6);
Console.WriteLine(rs.ToString());
rs.X = 8;
Console.WriteLine(rs.ToString());

var rs2 = new PointWithPropertySyntax(2, 4, 6);
Console.WriteLine(rs2.ToString());
rs2.X = 8;
Console.WriteLine(rs2.ToString());

var rors = new ReadOnlyPoint(2, 4, 6);
Console.WriteLine(rors.ToString());
//Compiler Error:
//rors.X = 8;
Console.WriteLine(rors.ToString());

var rors2 = new ReadOnlyPointWithPropertySyntax(2, 4, 6);
Console.WriteLine(rors2.ToString());
//Compiler Error:
//rors2.X = 8;
Console.WriteLine(rors2.ToString());

Console.WriteLine("Deconstruction: ");
var (x1, y1, z1) = rs;
Console.WriteLine($"X: {x1} Y: {y1} Z: {z1}");
var (x2, y2, z2) = rors;
Console.WriteLine($"X: {x2} Y: {y2} Z: {z2}");
rs.Deconstruct(out double x3,out double y3,out double z3);
Console.WriteLine($"X: {x3} Y: {y3} Z: {z3}");
rors.Deconstruct(out double x4,out double y4,out double z4);
Console.WriteLine($"X: {x4} Y: {y4} Z: {z4}");





public record struct Point(double X, double Y, double Z);

public record struct PointWithPropertySyntax()
{
    public double X { get; set; } = default;
    public double Y { get; set; } = default;
    public double Z { get; set; } = default;

    public PointWithPropertySyntax(double x, double y, double z) : this()
    {
        X = x;
        Y = y;
        Z = z;
    }
};
public readonly record struct ReadOnlyPoint(double X, double Y, double Z);

public readonly record struct ReadOnlyPointWithPropertySyntax()
{
    public double X { get; init; } = default;
    public double Y { get; init; } = default;
    public double Z { get; init; } = default;

    public ReadOnlyPointWithPropertySyntax(double x, double y, double z) : this()
    {
        X = x;
        Y = y;
        Z = z;
    }
};


