dotnet new sln -n Chapter18_AllProjects 

dotnet new console -lang c# -n FirstSamples -o .\FirstSamples -f net6.0
dotnet sln .\Chapter18_AllProjects.sln add .\FirstSamples
dotnet add FirstSamples package Microsoft.NETCore.ILAsm --version 6.0.0-preview.7.21377.19
dotnet add FirstSamples package Microsoft.NETCore.ILDAsm --version 6.0.0-preview.7.21377.19


dotnet new console -lang c# -n RoundTrip -o .\RoundTrip -f net6.0
dotnet sln .\Chapter18_AllProjects.sln add .\RoundTrip

dotnet new console -lang c# -n DynamicAsmBuilder -o .\DynamicAsmBuilder -f net6.0
dotnet sln .\Chapter18_AllProjects.sln add .\DynamicAsmBuilder
dotnet add DynamicAsmBuilder package System.Reflection.Emit

pause