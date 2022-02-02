dotnet new sln -n Chapter16_AllProjects 

dotnet new console -lang c# -n CustomNamespaces -o .\CustomNamespaces -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\CustomNamespaces

dotnet new console -lang c# -n FunWithConfiguration -o .\FunWithConfiguration -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\FunWithConfiguration
dotnet add FunWithConfiguration package Microsoft.Extensions.Configuration.Json --prerelease

dotnet new classlib -lang c# -n CarLibrary -o .\CarLibrary -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\CarLibrary
dotnet add CarLibrary package Microsoft.EntityFrameworkCore --prerelease


dotnet new console -lang c# -n CSharpCarClient -o .\CSharpCarClient -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\CSharpCarClient
dotnet add CSharpCarClient reference CarLibrary

dotnet new console -lang vb -n VisualBasicCarClient -o .\VisualBasicCarClient -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\VisualBasicCarClient
dotnet add VisualBasicCarClient reference CarLibrary

dotnet new console -lang c# -n FunWithProbingPaths -o .\FunWithProbingPaths -f net6.0
dotnet sln .\Chapter16_AllProjects.sln add .\FunWithProbingPaths
dotnet add FunWithProbingPaths package Microsoft.EntityFrameworkCore --prerelease

pause