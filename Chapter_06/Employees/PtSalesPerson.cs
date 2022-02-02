namespace Employees;
sealed class PtSalesPerson : SalesPerson
{
    public PtSalesPerson(string fullName, int age, int empId,
        float currPay, string ssn, int numbOfSales)
        : base(fullName, age, empId, currPay, ssn, numbOfSales)
    {
    }
}
