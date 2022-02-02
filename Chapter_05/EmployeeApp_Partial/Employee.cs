namespace EmployeeApp
{
    partial class Employee
    {


        // Constructors.
        public Employee()
        {

        }
        public Employee(string name, int id, float pay, string empSsn) : this(name,0,id,pay, empSsn, EmployeePayTypeEnum.Salaried)
        {
        }
        //public Employee(string name, int age, int id, float pay)
        //{
        //    _empName = name;
        //    _empId = id;
        //    _empAge = age;
        //    _currPay = pay;
        //}
        public Employee(string name, int age, int id, 
            float pay, string empSsn, EmployeePayTypeEnum payType)
        {
            Name = name;
            Id = id;
            Age = age;
            Pay = pay;
            //With read only, this format must be used
            //_empSSN = empSsn;
            //With private set and public get, this format can be used
            SocialSecurityNumber = empSsn;
            PayType = payType;
        }

        // Methods.
        //public void GiveBonus(float amount) => Pay += amount;
        public void GiveBonus(float amount)
        {
            Pay = this switch
            {
                {PayType: EmployeePayTypeEnum.Commission } => Pay += .10F * amount,
                {PayType: EmployeePayTypeEnum.Hourly } => Pay += 40F * amount/2080F,
                {PayType: EmployeePayTypeEnum.Salaried } => Pay += amount,
                _ => Pay+=0
            };
            //Pay += amount;
        }

        public void DisplayStats()
        {
            Console.WriteLine("Name: {0}", Name);
            Console.WriteLine("ID: {0}", Id);
            Console.WriteLine("Age: {0}", Age);
            Console.WriteLine("Pay: {0}", Pay);
        }
        // Accessor (get method).
        public string GetName() => _empName;

        // Mutator (set method).
        public void SetName(string name)
        {
            // Do a check on incoming value
            // before making assignment.
            if (name.Length > 15)
            {
                Console.WriteLine("Error! Name length exceeds 15 characters!");
            }
            else
            {
                _empName = name;
            }
        }

    }
}
