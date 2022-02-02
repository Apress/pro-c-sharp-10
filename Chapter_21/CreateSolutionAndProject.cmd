dotnet new sln -n Chapter21_AllProjects 

dotnet new console -lang c# -n AutoLot.Samples -o .\AutoLot.Samples -f net6.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.Samples
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.Design --prerelease
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.SqlServer --prerelease
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.Tools --prerelease
dotnet add AutoLot.Samples package Microsoft.EntityFrameworkCore.Proxies --prerelease

dotnet new console -lang c# -n AutoLot.TPH -o .\AutoLot.TPH -f net6.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.TPH
dotnet add AutoLot.TPH package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.TPH package Microsoft.EntityFrameworkCore.Design --prerelease
dotnet add AutoLot.TPH package Microsoft.EntityFrameworkCore.SqlServer --prerelease

dotnet new console -lang c# -n AutoLot.TPT -o .\AutoLot.TPT -f net6.0
dotnet sln .\Chapter21_AllProjects.sln add .\AutoLot.TPT
dotnet add AutoLot.TPT package Microsoft.EntityFrameworkCore --prerelease
dotnet add AutoLot.TPT package Microsoft.EntityFrameworkCore.Design --prerelease
dotnet add AutoLot.TPT package Microsoft.EntityFrameworkCore.SqlServer --prerelease

pause