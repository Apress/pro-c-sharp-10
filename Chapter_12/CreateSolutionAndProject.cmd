dotnet new sln -n Chapter12_AllProjects 

dotnet new console -lang c# -n SimpleDelegate -o .\SimpleDelegate -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\SimpleDelegate

dotnet new console -lang c# -n CarDelegate -o .\CarDelegate -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\CarDelegate

dotnet new console -lang c# -n GenericDelegate -o .\GenericDelegate -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\GenericDelegate

dotnet new console -lang c# -n ActionAndFuncDelegates -o .\ActionAndFuncDelegates -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\ActionAndFuncDelegates

dotnet new console -lang c# -n PublicDelegateProblem -o .\PublicDelegateProblem -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\PublicDelegateProblem

dotnet new console -lang c# -n CarEvents -o .\CarEvents -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\CarEvents

dotnet new console -lang c# -n AnonymousMethods -o .\AnonymousMethods -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\AnonymousMethods

dotnet new console -lang c# -n LambdaExpressions -o .\LambdaExpressions -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\LambdaExpressions




dotnet new console -lang c# -n CarEventsWithLambdas -o .\CarEventsWithLambdas -f net6.0
dotnet sln .\Chapter12_AllProjects.sln add .\CarEventsWithLambdas

pause