dotnet new nugetconfig --nuget-source https://api.nuget.org/v3/index.json

rem create the solution
dotnet new sln -n AutoLot
rem add autolot dal to solution
dotnet sln AutoLot.sln add ..\Chapter_23\AutoLot.Models
dotnet sln AutoLot.sln add ..\Chapter_23\AutoLot.Dal

rem create the class library for the application services and add it to the solution
dotnet new classlib -lang c# -n AutoLot.Services -o .\AutoLot.Services -f net6.0
dotnet sln AutoLot.sln add AutoLot.Services

dotnet add AutoLot.Services package Microsoft.Extensions.Hosting.Abstractions --prerelease 
dotnet add AutoLot.Services package Microsoft.VisualStudio.Threading.Analyzers --prerelease
dotnet add AutoLot.Services package Microsoft.Extensions.Options --prerelease 
dotnet add AutoLot.Services package Serilog.AspNetCore
dotnet add AutoLot.Services package Serilog.Enrichers.Environment
dotnet add AutoLot.Services package Serilog.Settings.Configuration
dotnet add AutoLot.Services package Serilog.Sinks.Console
dotnet add AutoLot.Services package Serilog.Sinks.File
dotnet add AutoLot.Services package Serilog.Sinks.MSSqlServer
dotnet add AutoLot.Services package System.Text.Json --prerelease 
dotnet add AutoLot.Services package Microsoft.VisualStudio.Threading.Analyzers

rem update the path references as needed
dotnet add AutoLot.Services reference ..\Chapter_23\AutoLot.Models
dotnet add AutoLot.Services reference ..\Chapter_23\AutoLot.Dal

rem create the ASP.NET Core RESTful Service project, add it to the solution
dotnet new webapi -lang c# -n AutoLot.Api -au none -o .\AutoLot.Api -f net6.0
dotnet sln AutoLot.sln add AutoLot.Api

dotnet add AutoLot.Api package AutoMapper
dotnet add AutoLot.Api package Microsoft.VisualStudio.Threading.Analyzers --prerelease
dotnet add AutoLot.Api package Swashbuckle.AspNetCore
dotnet add AutoLot.Api package Swashbuckle.AspNetCore.Annotations
dotnet add AutoLot.Api package Swashbuckle.AspNetCore.Swagger
dotnet add AutoLot.Api package Swashbuckle.AspNetCore.SwaggerGen
dotnet add AutoLot.Api package Swashbuckle.AspNetCore.SwaggerUI
dotnet add AutoLot.Api package Microsoft.VisualStudio.Web.CodeGeneration.Design --prerelease 
dotnet add AutoLot.Api package Microsoft.EntityFrameworkCore.SqlServer --prerelease 
dotnet add AutoLot.Api package Microsoft.EntityFrameworkCore.Design --prerelease 
dotnet add AutoLot.Api package System.Text.Json --prerelease 
dotnet add AutoLot.Api package Microsoft.AspNetCore.Mvc.Versioning 
dotnet add AutoLot.Api package Microsoft.AspNetCore.Mvc.Versioning.ApiExplorer
dotnet add AutoLot.Api package Microsoft.VisualStudio.Threading.Analyzers

rem update the path references as needed
dotnet add AutoLot.Api reference ..\Chapter_23\AutoLot.Dal
dotnet add AutoLot.Api reference ..\Chapter_23\AutoLot.Models
dotnet add AutoLot.Api reference AutoLot.Services

rem create the ASP.NET Core Web App (MVC) project and add it to the solution
dotnet new mvc -lang c# -n AutoLot.Mvc -au none -o .\AutoLot.Mvc -f net6.0
dotnet sln AutoLot.sln add AutoLot.Mvc

rem add packages
dotnet add AutoLot.Mvc package AutoMapper
dotnet add AutoLot.Mvc package Microsoft.VisualStudio.Threading.Analyzers --prerelease
dotnet add AutoLot.Mvc package System.Text.Json --prerelease 
dotnet add AutoLot.Mvc package LigerShark.WebOptimizer.Core
dotnet add AutoLot.Mvc package Microsoft.Web.LibraryManager.Build
dotnet add AutoLot.Mvc package Microsoft.EntityFrameworkCore.SqlServer --prerelease 
dotnet add AutoLot.Mvc package Microsoft.EntityFrameworkCore.Design --prerelease 
dotnet add AutoLot.Mvc package Microsoft.VisualStudio.Web.CodeGeneration.Design --prerelease 
dotnet add AutoLot.Mvc package Microsoft.VisualStudio.Threading.Analyzers
rem add project references
rem update the path references as needed
dotnet add AutoLot.Mvc reference ..\Chapter_23\AutoLot.Models
dotnet add AutoLot.Mvc reference ..\Chapter_23\AutoLot.Dal
dotnet add AutoLot.Mvc reference AutoLot.Services

rem create the ASP.NET Core Web App (MVC) project and add it to the solution
dotnet new webapp -lang c# -n AutoLot.Web -au none -o .\AutoLot.Web -f net6.0
dotnet sln AutoLot.sln add AutoLot.Web

rem add packages
dotnet add AutoLot.Web package AutoMapper
dotnet add AutoLot.Web package Microsoft.VisualStudio.Threading.Analyzers --prerelease
dotnet add AutoLot.Web package System.Text.Json --prerelease 
dotnet add AutoLot.Web package LigerShark.WebOptimizer.Core
dotnet add AutoLot.Web package Microsoft.Web.LibraryManager.Build
dotnet add AutoLot.Web package Microsoft.EntityFrameworkCore.SqlServer --prerelease 
dotnet add AutoLot.Web package Microsoft.EntityFrameworkCore.Design --prerelease 
dotnet add AutoLot.Web package Microsoft.VisualStudio.Web.CodeGeneration.Design --prerelease 
dotnet add AutoLot.Web package Microsoft.VisualStudio.Threading.Analyzers
rem add project references
rem update the path references as needed
dotnet add AutoLot.Web reference ..\Chapter_23\AutoLot.Models
dotnet add AutoLot.Web reference ..\Chapter_23\AutoLot.Dal
dotnet add AutoLot.Web reference AutoLot.Services

pause