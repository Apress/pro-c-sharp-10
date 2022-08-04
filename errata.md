# Errata for *Pro C# 10 with .NET 6*

On **page 43** Image issue: 
Image 2-12 shows the type as int, it should be string. 

*** 
On **page 43** Code Typo:
 
The **Name** property of the **Make** class should be: 
```csharp
public string Name 
{ 
    get => default; 
    set {}; 
} 
```
***  
On **page 44** Code Typo:
 
The **GetPetName()** method of the **SportsCar** class should be: 
```csharp 
public string GetPetName() 
{ 
    PetName = "Fred"; 
    return PetName; 
} 
``` 
*** 
On **page 1265** Code Typo:
 
In the **Showtemplate()** method of **MainWindow.xaml.cs**, the **Assembly.Load** version should be 6.0.00: 
```csharp 
Assembly asm = Assembly.Load("PresentationFramework, Version=6.0.0.0," + 
  "Culture=neutral, PublicKeyToken=31bf3856ad364e35");
``` 
*** 
