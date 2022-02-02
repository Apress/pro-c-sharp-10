dotnet new sln -n Chapter9_AllProjects 

dotnet new console -lang c# -n FinalizableDisposableClass -o .\FinalizableDisposableClass -f net6.0
dotnet sln .\Chapter9_AllProjects.sln add .\FinalizableDisposableClass

dotnet new console -lang c# -n LazyObjectInstantiation -o .\LazyObjectInstantiation -f net6.0
dotnet sln .\Chapter9_AllProjects.sln add .\LazyObjectInstantiation

dotnet new console -lang c# -n SimpleDispose -o .\SimpleDispose -f net6.0
dotnet sln .\Chapter9_AllProjects.sln add .\SimpleDispose

dotnet new console -lang c# -n SimpleFinalize -o .\SimpleFinalize -f net6.0
dotnet sln .\Chapter9_AllProjects.sln add .\SimpleFinalize

dotnet new console -lang c# -n SimpleGC -o .\SimpleGC -f net6.0
dotnet sln .\Chapter9_AllProjects.sln add .\SimpleGC


pause