dotnet new sln -n Chapter25_AllProjects 

dotnet new wpf -lang c# -n WpfTesterApp -o .\WpfTesterApp -f net6.0 --nullable false
dotnet sln .\Chapter25_AllProjects.sln add .\WpfTesterApp

pause