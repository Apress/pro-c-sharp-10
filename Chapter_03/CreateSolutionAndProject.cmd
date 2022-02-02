dotnet new sln -n Chapter3_AllProjects 

dotnet new console -lang c# -n SimpleCSharpApp -o .\SimpleCSharpApp -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\SimpleCSharpApp

dotnet new console -lang c# -n BasicConsoleIO -o .\BasicConsoleIO -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\BasicConsoleIO

dotnet new console -lang c# -n BasicDataTypes -o .\BasicDataTypes -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\BasicDataTypes

dotnet new console -lang c# -n FunWithStrings -o .\FunWithStrings -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\FunWithStrings

dotnet new Console -lang c# -n CSharp9Strings -o .\CSharp9Strings -f net5.0
dotnet sln .\Chapter3_AllProjects.sln add .\CSharp9Strings

dotnet new console -lang c# -n TypeConversions -o .\TypeConversions  -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\TypeConversions

dotnet new console -lang c# -n ImplicitlyTypedLocalVars -o .\ImplicitlyTypedLocalVars -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\ImplicitlyTypedLocalVars

dotnet new console -lang c# -n IterationsAndDecisions -o .\IterationsAndDecisions -f net6.0
dotnet sln .\Chapter3_AllProjects.sln add .\IterationsAndDecisions

pause