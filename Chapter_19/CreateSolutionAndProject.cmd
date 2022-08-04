dotnet new sln -n Chapter19_AllProjects 

dotnet new console -lang c# -n DirectoryApp -o .\DirectoryApp -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\DirectoryApp

dotnet new console -lang c# -n DriveInfoApp -o .\DriveInfoApp -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\DriveInfoApp

dotnet new console -lang c# -n SimpleFileIO -o .\SimpleFileIO -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\SimpleFileIO

dotnet new console -lang c# -n FileStreamApp -o .\FileStreamApp -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\FileStreamApp

dotnet new console -lang c# -n StreamWriterReaderApp -o .\StreamWriterReaderApp -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\StreamWriterReaderApp

dotnet new console -lang c# -n StringReaderWriterApp -o .\StringReaderWriterApp -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\StringReaderWriterApp

dotnet new console -lang c# -n BinaryWriterReader -o .\BinaryWriterReader -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\BinaryWriterReader

dotnet new console -lang c# -n MyDirectoryWatcher -o .\MyDirectoryWatcher -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\MyDirectoryWatcher

dotnet new console -lang c# -n SimpleSerialize -o .\SimpleSerialize -f net6.0
dotnet sln .\Chapter19_AllProjects.sln add .\SimpleSerialize

pause