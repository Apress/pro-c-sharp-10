# Errata for *Pro C# 10 with .NET 6*

On **page 8** phrasing  
Getting an Overvie of .NET Assemblies:  
First paragraph, "they have absolutely no internal similarities"  
should read  
"they have significant differences"    

***  
On **page 37** Table haeder:  
Image the table hheader for table 2-2 should read:  
C# Versions by Target Framework  
***  
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
On **page 86** Typo
OrdinalIgnoreCare should be **OrdinalIgnoreCase**
```
***
On **page 152** Missing word:  
The note should read:  
It is typically considered bad style to define public data within a class or *mutabl*e structure.  
*** 
On **page 154** copy paste error:  
The following text and code sample should be removed:  
Prior to C# 10, you could not declare a parameterless (i.e., default) constructor on a structure, as it was provided in the implementation of structure types. Now you can create Point variables, as follows:  
```
// Call custom constructor.
Point p2 = new Point(50, 60);
// Prints X=50,Y=60.
p2.Display();
```  
***  
On **page 172** Bad wording:  
For the Null-Coalescing Assignment Operator, the second sentence should read:  
This operator assigns the value of the right hand side to the left-hand side only if the left-hand side is null.  
***  
On **page 1265** Code Typo:
 
In the **Showtemplate()** method of **MainWindow.xaml.cs**, the **Assembly.Load** version should be 6.0.00: 
```csharp 
Assembly asm = Assembly.Load("PresentationFramework, Version=6.0.0.0," + 
  "Culture=neutral, PublicKeyToken=31bf3856ad364e35");
``` 
*** 
