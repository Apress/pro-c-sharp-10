namespace ObjectOverrides;
class Person
{
    public string FirstName { get; set; } = "";
    public string LastName { get; set; } = "";
    public int Age { get; set; }
    public string SSN { get; } = "";


    public Person(string fName, string lName, int personAge, string ssn)
    {
        FirstName = fName;
        LastName = lName;
        Age = personAge;
        SSN = ssn;
    }
    public Person() { }
    public override string ToString()
        => $"[First Name: {FirstName}; Last Name: {LastName}; Age: {Age}]";
    //public override bool Equals(object obj)
    //{
    //    if (!(obj is Person temp))
    //    {
    //        return false;
    //    }
    //    if (temp.FirstName == this.FirstName
    //        && temp.LastName == this.LastName
    //        && temp.Age == this.Age)
    //    {
    //        return true;
    //    }
    //    return false;
    //}

    // No need to cast "obj" to a Person anymore,
    // as everything has a ToString() method.
    public override bool Equals(object obj) => obj?.ToString() == ToString();

    // Return a hash code based on a point of unique string data.
    public override int GetHashCode() => SSN.GetHashCode();
    // Return a hash code based on the person's ToString() value.
    //public override int GetHashCode() => ToString().GetHashCode();
}
