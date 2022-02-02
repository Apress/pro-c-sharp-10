namespace StaticDataAndMembers;
class SavingsAccount
{
    public double currBalance;
    // A static point of data.
    //public static double currInterestRate = 0.04;
    //public static double currInterestRate;
    private static double _currInterestRate;

    // A static constructor!.
    static SavingsAccount()
    {
        Console.WriteLine("In static ctor!");
        //currInterestRate = 0.04; // This is static data!
        _currInterestRate = 0.04; // This is static data!
    }

    public SavingsAccount(double balance)
    {
        currBalance = balance;
    }

    // A static property.
    public static double InterestRate
    {
        get { return _currInterestRate; }
        set { _currInterestRate = value; }
    }

    // Static members to get/set interest rate.
    public static void SetInterestRate(double newRate)
        //=> currInterestRate = newRate;
        => _currInterestRate = newRate;

    public static double GetInterestRate()
        //=> currInterestRate;
        => _currInterestRate;
}
