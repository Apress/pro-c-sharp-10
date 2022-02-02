dotnet new sln -n Chapter26_AllProjects 

dotnet new wpf -lang c# -n VisualLayoutTester -o .\VisualLayoutTester -f net6.0 --nullable false
dotnet sln .\Chapter26_AllProjects.sln add .\VisualLayoutTester

dotnet new wpf -lang c# -n MyWordPad -o .\MyWordPad -f net6.0 --nullable false
dotnet sln .\Chapter26_AllProjects.sln add .\MyWordPad

dotnet new wpf -lang c# -n WpfRoutedEvents -o .\WpfRoutedEvents -f net6.0 --nullable false
dotnet sln .\Chapter26_AllProjects.sln add .\WpfRoutedEvents

dotnet new wpf -lang c# -n WpfControlsAndAPIs -o .\WpfControlsAndAPIs -f net6.0 --nullable false
dotnet sln .\Chapter26_AllProjects.sln add .\WpfControlsAndAPIs
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore --prerelease
dotnet add WpfControlsAndAPIs package Microsoft.EntityFrameworkCore.SqlServer --prerelease
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration --prerelease
dotnet add WpfControlsAndAPIs package Microsoft.Extensions.Configuration.Json --prerelease
dotnet sln .\Chapter26_AllProjects.sln add ..\Chapter_23\AutoLot.Models
dotnet sln .\Chapter26_AllProjects.sln add ..\Chapter_23\AutoLot.Dal
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Models
dotnet add WpfControlsAndAPIs reference ..\Chapter_23\AutoLot.Dal

dotnet new wpf -lang c# -n CustomDependencyProperty  -o .\CustomDependencyProperty -f net6.0 --nullable false
dotnet sln .\Chapter26_AllProjects.sln add .\CustomDependencyProperty


pause