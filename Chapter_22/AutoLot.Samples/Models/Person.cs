namespace AutoLot.Samples.Models;

[Owned]
public class Person
{
    [Required, StringLength(50)]
    public string FirstName { get; set; }
    [Required, StringLength(50)]
    public string LastName { get; set; }
}
