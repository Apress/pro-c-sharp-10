dotnet new sln -n CalcProjects -o .\Calculators

dotnet new console -lang c# -n Calc.Cs -o .\Calculators\Calc.cs -f net6.0
dotnet sln .\Calculators\CalcProjects.sln add .\Calculators\Calc.cs

dotnet new console -lang f# -n Calc.Fs -o .\Calculators\Calc.Fs -f net6.0
dotnet sln .\Calculators\CalcProjects.sln add .\Calculators\Calc.Fs

dotnet new console -lang vb -n Calc.Vb -o .\Calculators\Calc.Vb -f net6.0
dotnet sln .\Calculators\CalcProjects.sln add .\Calculators\Calc.Vb

pause

