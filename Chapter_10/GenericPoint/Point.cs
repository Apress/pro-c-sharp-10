namespace GenericPoint;
// A generic Point structure.
public struct Point<T>
{
    // Generic state date.
    private T _xPos;
    private T _yPos;

    // Generic constructor.
    public Point(T xVal, T yVal)
    {
        _xPos = xVal;
        _yPos = yVal;
    }

    // Generic properties.
    public T X
    {
        get => _xPos;
        set => _xPos = value;
    }

    public T Y
    {
        get => _yPos;
        set => _yPos = value;
    }

    public override string ToString() => $"[{_xPos}, {_yPos}]";

    // The "default" keyword is overloaded in C#.
    // When used with generics, it represents the default
    // value of a type parameter.
    public void ResetPoint()
    {
        //_xPos = default(T);
        //_yPos = default(T);

        //Shorthand for generics
        _xPos = default;
        _yPos = default;
    }
}
