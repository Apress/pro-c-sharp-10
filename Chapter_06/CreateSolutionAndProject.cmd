dotnet new sln -n Chapter6_AllProjects 

dotnet new console -lang c# -n BasicInheritance -o .\BasicInheritance -f net6.0
dotnet sln .\Chapter6_AllProjects.sln add .\BasicInheritance

dotnet new console -lang c# -n Employees -o .\Employees -f net6.0
dotnet sln .\Chapter6_AllProjects.sln add .\Employees

dotnet new console -lang c# -n RecordInheritance -o .\RecordInheritance -f net6.0
dotnet sln .\Chapter6_AllProjects.sln add .\RecordInheritance

dotnet new console -lang c# -n ObjectOverrides -o .\ObjectOverrides -f net6.0
dotnet sln .\Chapter6_AllProjects.sln add .\ObjectOverrides

dotnet new console -lang c# -n Shapes -o .\Shapes -f net6.0
dotnet sln .\Chapter6_AllProjects.sln add .\Shapes

pause