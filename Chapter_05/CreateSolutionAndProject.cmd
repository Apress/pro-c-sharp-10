dotnet new sln -n Chapter5_AllProjects 

dotnet new console -lang c# -n SimpleClassExample -o .\SimpleClassExample -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\SimpleClassExample

dotnet new console -lang c# -n StaticDataAndMembers -o .\StaticDataAndMembers -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\StaticDataAndMembers

dotnet new console -lang c# -n ConstData -o .\ConstData -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\ConstData

dotnet new console -lang c# -n EmployeeApp -o .\EmployeeApp -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\EmployeeApp

dotnet new console -lang c# -n AutoProps -o .\AutoProps -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\AutoProps

dotnet new console -lang c# -n ObjectInitializers -o .\ObjectInitializers -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\ObjectInitializers

dotnet new console -lang c# -n EmployeeApp -o .\EmployeeApp_Partial -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\EmployeeApp

dotnet new console -lang c# -n OopExamples -o .\OopExamples -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\OopExamples

dotnet new console -lang c# -n FunWithRecords -o .\FunWithRecords -f net6.0
dotnet sln .\Chapter5_AllProjects.sln add .\FunWithRecords



pause