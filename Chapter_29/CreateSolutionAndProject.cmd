dotnet new sln -n Chapter29_AllProjects 

dotnet new wpf -lang c# -n WpfNotifications -o .\WpfNotifications -f net6.0  --nullable false
dotnet sln .\Chapter29_AllProjects.sln add .\WpfNotifications

dotnet new wpf -lang c# -n WpfValidations -o .\WpfValidations -f net6.0 --nullable false
dotnet sln .\Chapter29_AllProjects.sln add .\WpfValidations

dotnet new wpf -lang c# -n WpfCommands -o .\WpfCommands -f net6.0 --nullable false
dotnet sln .\Chapter29_AllProjects.sln add .\WpfCommands

dotnet new wpf -lang c# -n WpfViewModel -o .\WpfViewModel -f net6.0 --nullable false
dotnet sln .\Chapter29_AllProjects.sln add .\WpfViewModel

dotnet new wpf -lang c# -n  -o .\ -f net6.0
dotnet sln .\Chapter29_AllProjects.sln add .\

dotnet new wpf -lang c# -n WpfControlsAndAPIs -o .\WpfControlsAndAPIs -f net6.0 --nullable false
dotnet sln .\Chapter25_AllProjects.sln add .\WpfControlsAndAPIs
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore.SqlServer
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration.Json
dotnet sln .\Chapter25_AllProjects.sln add ..\Chapter_23\AutoLot.Models
dotnet sln .\Chapter25_AllProjects.sln add ..\Chapter_23\AutoLot.Dal
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Models
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Dal


pause