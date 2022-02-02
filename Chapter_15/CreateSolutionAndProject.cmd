dotnet new sln -n Chapter15_AllProjects 

dotnet new console -lang c# -n ThreadStats -o .\ThreadStats -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\ThreadStats

dotnet new console -lang c# -n SimpleMultiThreadApp -o .\SimpleMultiThreadApp -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\SimpleMultiThreadApp

dotnet new console -lang c# -n AddWithThreads -o .\AddWithThreads -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\AddWithThreads

dotnet new console -lang c# -n MultiThreadedPrinting -o .\MultiThreadedPrinting -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\MultiThreadedPrinting

dotnet new console -lang c# -n BackgroundThreads -o .\BackgroundThreads -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\BackgroundThreads

dotnet new console -lang c# -n TimerApp -o .\TimerApp -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\TimerApp

dotnet new console -lang c# -n ThreadPoolApp -o .\ThreadPoolApp -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\ThreadPoolApp

dotnet new wpf -lang c# -n DataParallelismWithForEach -o .\DataParallelismWithForEach -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\DataParallelismWithForEach
dotnet add DataParallelismWithForEach package System.Drawing.Common --prerelease

dotnet new console -lang c# -n MyEBookReader -o .\MyEBookReader -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\MyEBookReader

dotnet new console -lang c# -n PLINQDataProcessingWithCancellation -o .\PLINQDataProcessingWithCancellation -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\PLINQDataProcessingWithCancellation

dotnet new console -lang c# -n FunWithCSharpAsync -o .\FunWithCSharpAsync -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\FunWithCSharpAsync
dotnet add FunWithCSharpAsync package Microsoft.VisualStudio.Threading --prerelease
dotnet add FunWithCSharpAsync package Microsoft.VisualStudio.Threading.Analyzers --prerelease

dotnet new wpf -lang c# -n PictureHandlerWithAsyncAwait -o .\PictureHandlerWithAsyncAwait -f net6.0
dotnet sln .\Chapter15_AllProjects.sln add .\PictureHandlerWithAsyncAwait
dotnet add PictureHandlerWithAsyncAwait package System.Drawing.Common --prerelease

pause