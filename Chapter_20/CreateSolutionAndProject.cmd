dotnet new sln -n Chapter20_AllProjects 

dotnet new console -lang c# -n MyConnectionFactory -o .\MyConnectionFactory -f net6.0
dotnet sln .\Chapter20_AllProjects.sln add .\MyConnectionFactory
dotnet add MyConnectionFactory package Microsoft.Data.SqlClient --prerelease
dotnet add MyConnectionFactory package System.Data.Common --prerelease
dotnet add MyConnectionFactory package System.Data.Odbc --prerelease
dotnet add MyConnectionFactory package System.Data.OleDb --prerelease


dotnet new console -lang c# -n DataProviderFactory -o .\DataProviderFactory -f net6.0
dotnet sln .\Chapter20_AllProjects.sln add .\DataProviderFactory
dotnet add DataProviderFactory package Microsoft.Data.SqlClient --prerelease
dotnet add DataProviderFactory package System.Data.Common --prerelease
dotnet add DataProviderFactory package System.Data.Odbc --prerelease
dotnet add DataProviderFactory package System.Data.OleDb --prerelease
dotnet add DataProviderFactory package Microsoft.Extensions.Configuration.Json --prerelease


dotnet new console -lang c# -n AutoLot.DataReader -o .\AutoLot.DataReader -f net6.0
dotnet sln .\Chapter20_AllProjects.sln add .\AutoLot.DataReader
dotnet add AutoLot.DataReader package Microsoft.Data.SqlClient --prerelease

dotnet new console -lang c# -n AutoLot.Dal -o .\AutoLot.Dal -f net6.0
dotnet sln .\Chapter20_AllProjects.sln add .\AutoLot.Dal
dotnet add AutoLot.Dal package Microsoft.Data.SqlClient --prerelease

dotnet new console -lang c# -n AutoLot.Client -o .\AutoLot.Client -f net6.0
dotnet sln .\Chapter20_AllProjects.sln add .\AutoLot.Client
dotnet add AutoLot.Client package Microsoft.Data.SqlClient --prerelease
dotnet add AutoLot.Client reference AutoLot.Dal --prerelease

pause