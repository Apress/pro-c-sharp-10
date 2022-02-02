global using System;

using EmployeeApp;

Console.WriteLine("***** Fun with Encapsulation *****\n");
//Employee emp = new Employee("Marvin", 456, 30_000);
//emp.GiveBonus(1000);
//emp.DisplayStats();

// Use the get/set methods to interact with the object's name.
//emp.SetName("Marv");
//Console.WriteLine("Employee is named: {0}", emp.GetName());

// Reset and then get the Name property.
//emp.Name = "Marv";
//Console.WriteLine("Employee is named: {0}", emp.Name);

// Longer than 15 characters! Error will print to console.
//Employee emp2 = new Employee();
//emp2.SetName("Xena the warrior princess");

Employee emp = new Employee("Marvin", 45, 123, 1000, "111-11-1111", EmployeePayTypeEnum.Salaried);
Console.WriteLine(emp.Pay);
emp.GiveBonus(100);
Console.WriteLine(emp.Pay);

Console.ReadLine();
