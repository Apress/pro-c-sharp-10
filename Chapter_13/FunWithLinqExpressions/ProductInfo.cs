namespace FunWithLinqExpressions;
class ProductInfo
{
    public string Name { get; set; } = "";
    public string Description { get; set; } = "";
    public int NumberInStock { get; set; } = 0;

    public override bool Equals(object obj)
    {
        return base.Equals(obj);
    }

    public override int GetHashCode()
    {
        return base.GetHashCode();
    }

    public override string ToString()
        => $"Name={Name}, Description={Description}, Number in Stock={NumberInStock}";
}
