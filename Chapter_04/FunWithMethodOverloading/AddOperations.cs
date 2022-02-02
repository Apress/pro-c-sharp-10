namespace FunWithMethodOverloading;
public static class AddOperations
{
    // Overloaded Add() method.

    public static int Add(int x, int y)
    {
        return x + y;
    }
    public static int Add(int x, int y, int z = 0)
    {
        return x + (y * z);
    }

    public static double Add(double x, double y)
    {
        return x + y;
    }

    public static long Add(long x, long y)
    {
        return x + y;
    }
}