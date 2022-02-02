namespace SimpleSerialize;

[XmlRoot(Namespace = "http://www.MyCompany.com")]
public class JamesBondCar : Car
{
    [XmlAttribute]
    //[JsonInclude]
    public bool CanFly;

    [XmlAttribute]
    //[JsonInclude]
    public bool CanSubmerge;

    public override string ToString()
    => $"CanFly:{CanFly}, CanSubmerge:{CanSubmerge} {base.ToString()}";
}
