Calc c = new Calc();
int ans = c.Add(10, 84);
Console.WriteLine("10 + 84 is {0}.", ans);
//Wait for user to press the Enter key
Console.ReadLine();

class Calc
{
    public int Add(int addend1, int addend2)
    {
        return addend1 + addend2;
    }
}