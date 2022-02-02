dotnet new sln -n Chapter13_AllProjects 

dotnet new console -lang c# -n LinqOverArray -o .\LinqOverArray -f net6.0
dotnet sln .\Chapter13_AllProjects.sln add .\LinqOverArray

dotnet new console -lang c# -n FunWithLinqExpressions -o .\FunWithLinqExpressions -f net6.0
dotnet sln .\Chapter13_AllProjects.sln add .\FunWithLinqExpressions

dotnet new console -lang c# -n LinqOverCollections -o .\LinqOverCollections -f net6.0
dotnet sln .\Chapter13_AllProjects.sln add .\LinqOverCollections

dotnet new console -lang c# -n LinqRetValues -o .\LinqRetValues -f net6.0
dotnet sln .\Chapter13_AllProjects.sln add .\LinqRetValues

dotnet new console -lang c# -n LinqUsingEnumerable -o .\LinqUsingEnumerable -f net6.0
dotnet sln .\Chapter13_AllProjects.sln add .\LinqUsingEnumerable

pause