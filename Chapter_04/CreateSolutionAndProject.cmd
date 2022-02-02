dotnet new sln -n Chapter4_AllProjects 

dotnet new console -lang c# -n FunWithArrays -o .\FunWithArrays -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithArrays

dotnet new console -lang c# -n FunWithLocalFunctions -o .\FunWithLocalFunctions -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithLocalFunctions

dotnet new console -lang c# -n FunWithMethods -o .\FunWithMethods -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithMethods

dotnet new console -lang c# -n FunWithMethodOverloading -o .\FunWithMethodOverloading -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithMethodOverloading

dotnet new console -lang c# -n FunWithEnums -o .\FunWithEnums -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithEnums

dotnet new console -lang c# -n FunWithBitwiseOperations -o .\FunWithBitwiseOperations -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithBitwiseOperations

dotnet new console -lang c# -n FunWithStructures -o .\FunWithStructures  -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithStructures

dotnet new console -lang c# -n FunWithValueAndReferenceTypes -o .\FunWithValueAndReferenceTypes -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithValueAndReferenceTypes

dotnet new console -lang c# -n FunWithRefTypeValTypeParams -o .\FunWithRefTypeValTypeParams -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithRefTypeValTypeParams

dotnet new console -lang c# -n FunWithNullableReferenceTypes -o .\FunWithNullableReferenceTypes -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithNullableReferenceTypes

dotnet new console -lang c# -n FunWithNullableValueTypes -o .\FunWithNullableValueTypes -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithNullableValueTypes

dotnet new console -lang c# -n FunWithTuples -o .\FunWithTuples -f net6.0
dotnet sln .\Chapter4_AllProjects.sln add .\FunWithTuples


pause