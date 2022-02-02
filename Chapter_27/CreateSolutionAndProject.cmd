dotnet new sln -n Chapter27_AllProjects 

dotnet new wpf -lang c# -n RenderingWithShapes -o .\RenderingWithShapes -f net6.0 --nullable false
dotnet sln .\Chapter27_AllProjects.sln add .\RenderingWithShapes

dotnet new wpf -lang c# -n RenderingWithVisuals -o .\RenderingWithVisuals -f net6.0 --nullable false
dotnet sln .\Chapter27_AllProjects.sln add .\RenderingWithVisuals

dotnet new wpf -lang c# -n FunWithTransforms -o .\FunWithTransforms -f net6.0 --nullable false
dotnet sln .\Chapter27_AllProjects.sln add .\FunWithTransforms

dotnet new wpf -lang c# -n InteractiveLaserSign -o .\InteractiveLaserSign -f net6.0 --nullable false
dotnet sln .\Chapter27_AllProjects.sln add .\InteractiveLaserSign

pause