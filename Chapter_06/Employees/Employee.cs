namespace Employees;
abstract partial class Employee
{
    public class BenefitPackage
    {
        public enum BenefitPackageLevel
        {
            Standard, Gold, Platinum
        }
        // Assume we have other members that represent
        // dental/health benefits, and so on.
        public double ComputePayDeduction()
        {
            return 125.0;
        }
    }

    public Employee()
    {
    }
    public Employee(string name, int id, float pay, string empSsn) : this(name, 0, id, pay, empSsn, EmployeePayTypeEnum.Salaried)
    {
    }
    public Employee(string name, int age, int id,
        float pay, string empSsn, EmployeePayTypeEnum payType)
    {
        Name = name;
        Id = id;
        Age = age;
        Pay = pay;
        SocialSecurityNumber = empSsn;
        PayType = payType;
    }

    public virtual void GiveBonus(float amount) => Pay += amount;
    // public void GiveBonus(float amount)
    // {
    //     Pay = this switch
    //     {
    //         {PayType: EmployeePayTypeEnum.Commission } => Pay += .10F * amount,
    //         {PayType: EmployeePayTypeEnum.Hourly } => Pay += 40F * amount/2080F,
    //         {PayType: EmployeePayTypeEnum.Salaried } => Pay += amount,
    //         _ => Pay+=0
    //     };
    // }
    // Expose certain benefit behaviors of object.
    public double GetBenefitCost() => EmpBenefits.ComputePayDeduction();

    public virtual void DisplayStats()
    {
        Console.WriteLine("Name: {0}", Name);
        Console.WriteLine("Id: {0}", Id);
        Console.WriteLine("Age: {0}", Age);
        Console.WriteLine("Pay: {0}", Pay);
        Console.WriteLine("SSN: {0}", SocialSecurityNumber);
    }
}
