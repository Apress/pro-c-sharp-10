dotnet publish 
dotnet publish -c release
dotnet publish  -r win-x64 -c release -o selfcontained --self-contained true
dotnet publish -r win-x64 -p:PublishSingleFile=true -c release -o singlefile --self-contained true 
rem update the project file
dotnet publish -r win-x64 -c release -o truesinglefile --self-contained true -p:PublishSingleFile=true
