namespace FunWithLinqExpressions;
class ProductInfoSmall
{
    public string Name { get; set; } = "";
    public string Description { get; set; } = "";
    public override string ToString()
        => $"Name={Name}, Description={Description}";
}
