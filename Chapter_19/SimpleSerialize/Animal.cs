namespace SimpleSerialize;

public class Animal
{
    public bool IsAlive = true;
    private string _fName = string.Empty;
    public string FirstName
    {
        get { return _fName; }
        set { _fName = value; }
    }
    public override string ToString() => $"IsAlive:{IsAlive} FirstName:{FirstName}";
}
