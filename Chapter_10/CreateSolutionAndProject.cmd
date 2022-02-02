dotnet new sln -n Chapter10_AllProjects 

dotnet new console -lang c# -n IssuesWithNonGenericCollections -o .\IssuesWithNonGenericCollections -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\IssuesWithNonGenericCollections

dotnet new console -lang c# -n FunWithCollectionInitialization -o .\FunWithCollectionInitialization -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\FunWithCollectionInitialization

dotnet new console -lang c# -n FunWithGenericCollections -o .\FunWithGenericCollections -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\FunWithGenericCollections

dotnet new console -lang c# -n FunWithObservableCollections -o .\FunWithObservableCollections -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\FunWithObservableCollections

dotnet new console -lang c# -n CustomGenericMethods -o .\CustomGenericMethods -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\CustomGenericMethods

dotnet new console -lang c# -n GenericPoint -o .\GenericPoint -f net6.0
dotnet sln .\Chapter10_AllProjects.sln add .\GenericPoint

pause