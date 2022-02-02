namespace SimpleSerialize;

public class Car
{
    //[JsonInclude]
    public Radio TheRadio = new Radio();

    //[JsonInclude]
    public bool IsHatchBack;

    public override string ToString()
    => $"IsHatchback:{IsHatchBack} Radio:{TheRadio.ToString()}";

}
