dotnet new sln -n Chapter23_AllProjects 

dotnet new classlib -lang c# -n AutoLot.Models -o .\AutoLot.Models -f net6.0 
dotnet sln .\Chapter23_AllProjects.sln add .\AutoLot.Models
dotnet add AutoLot.Models package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.Models package Microsoft.EntityFrameworkCore.SqlServer --prerelease
dotnet add AutoLot.Models package System.Text.Json --prerelease

dotnet new classlib -lang c# -n AutoLot.Dal -o .\AutoLot.Dal -f net6.0 
dotnet sln .\Chapter23_AllProjects.sln add .\AutoLot.Dal
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.Design --prerelease
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.SqlServer --prerelease
dotnet add AutoLot.Dal package Microsoft.EntityFrameworkCore.Tools --prerelease

dotnet add AutoLot.Dal reference AutoLot.Models

pause