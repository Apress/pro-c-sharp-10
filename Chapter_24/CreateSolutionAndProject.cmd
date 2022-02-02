dotnet new sln -n Chapter24_AllProjects 

dotnet sln .\Chapter24_AllProjects.sln add ..\Chapter_23\AutoLot.Models
dotnet sln .\Chapter24_AllProjects.sln add ..\Chapter_23\AutoLot.Dal

dotnet new xunit -lang c# -n AutoLot.Dal.Tests -o .\AutoLot.Dal.Tests -f net6.0
dotnet sln .\Chapter24_AllProjects.sln add AutoLot.Dal.Tests
dotnet add AutoLot.Dal.Tests package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.Dal.Tests package Microsoft.EntityFrameworkCore.Design --prerelease
dotnet add AutoLot.Dal.Tests package Microsoft.EntityFrameworkCore.SqlServer --prerelease
dotnet add AutoLot.Dal.Tests package Microsoft.Extensions.Configuration.Json --prerelease

dotnet add AutoLot.Dal.Tests package Microsoft.NET.Test.Sdk --prerelease
dotnet add AutoLot.Dal.Tests package coverlet.collector --prerelease

dotnet add AutoLot.Dal.Tests reference ..\Chapter_23\AutoLot.Dal
dotnet add AutoLot.Dal.Tests reference ..\Chapter_23\AutoLot.Models


pause