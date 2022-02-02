dotnet new sln -n Chapter17_AllProjects 

dotnet new console -lang c# -n MyTypeViewer -o .\MyTypeViewer -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\MyTypeViewer

dotnet new console -lang c# -n ExternalAssemblyReflector -o .\ExternalAssemblyReflector -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\ExternalAssemblyReflector

dotnet new console -lang c# -n FrameworkAssemblyViewer -o .\FrameworkAssemblyViewer -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\FrameworkAssemblyViewer
dotnet add .\FrameworkAssemblyViewer package Microsoft.EntityFrameworkCore --prerelease

dotnet new console -lang c# -n LateBindingApp -o .\LateBindingApp -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\LateBindingApp

dotnet new console -lang c# -n ApplyingAttributes -o .\ApplyingAttributes -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\ApplyingAttributes
dotnet add ApplyingAttributes package System.Text.Json --prerelease

dotnet new classlib -lang c# -n AttributedCarLibrary -o .\AttributedCarLibrary -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\AttributedCarLibrary

dotnet new console -lang c# -n VehicleDescriptionAttributeReader -o .\VehicleDescriptionAttributeReader -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\VehicleDescriptionAttributeReader
dotnet add VehicleDescriptionAttributeReader reference .\AttributedCarLibrary

dotnet new console -lang c# -n VehicleDescriptionAttributeReaderLateBinding -o .\VehicleDescriptionAttributeReaderLateBinding -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\VehicleDescriptionAttributeReaderLateBinding


dotnet new sln -n  Chapter17_ExtendableApp -o .\ExtendableAppExample

dotnet new classlib -lang c# -n CommonSnappableTypes -o .\ExtendableAppExample\CommonSnappableTypes -f net6.0
dotnet sln .\ExtendableAppExample\Chapter17_ExtendableApp.sln add .\ExtendableAppExample\CommonSnappableTypes

dotnet new classlib -lang c# -n CSharpSnapIn -o .\ExtendableAppExample\CSharpSnapIn -f net6.0
dotnet sln .\ExtendableAppExample\Chapter17_ExtendableApp.sln add .\ExtendableAppExample\CSharpSnapIn
dotnet add .\ExtendableAppExample\CSharpSnapin reference .\ExtendableAppExample\CommonSnappableTypes

dotnet new classlib -lang vb -n VBSnapIn -o .\ExtendableAppExample\VBSnapIn -f net6.0
dotnet sln .\ExtendableAppExample\Chapter17_ExtendableApp.sln add .\ExtendableAppExample\VBSnapIn
dotnet add .\ExtendableAppExample\VBSnapIn reference .\ExtendableAppExample\CommonSnappableTypes

dotnet new console -lang c# -n MyExtendableApp -o .\ExtendableAppExample\MyExtendableApp -f net6.0
dotnet sln .\ExtendableAppExample\Chapter17_ExtendableApp.sln add .\ExtendableAppExample\MyExtendableApp
dotnet add .\ExtendableAppExample\MyExtendableApp reference .\ExtendableAppExample\CommonSnappableTypes

dotnet new console -lang c# -n DynamicKeyword -o .\DynamicKeyword -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\DynamicKeyword

dotnet new classlib -lang c# -n MathLibrary -o .\MathLibrary -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\MathLibrary

dotnet new console -lang c# -n LateBindingWithDynamic -o .\LateBindingWithDynamic -f net6.0
dotnet sln .\Chapter17_AllProjects.sln add .\LateBindingWithDynamic

pause