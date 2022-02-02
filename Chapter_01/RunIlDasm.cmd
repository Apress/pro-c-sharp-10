cd calculators
dotnet build

if EXIST .\ILOutput GOTO CREATEIL
MD .\ILOutput
:CREATEIL

..\..\ildasm /all /METADATA /out=.\ILOutput\csharp.il .\Calc.Cs\bin\Debug\net6.0\calc.cs.dll
..\..\ildasm /out=.\ILOutput\csharp.all.il .\Calc.Cs\bin\Debug\net6.0\calc.cs.dll

..\..\ildasm /all /METADATA /out=.\ILOutput\csharp.tls.il .\Calc.tls.Cs\bin\Debug\net6.0\calc.tls.cs.dll
..\..\ildasm /out=.\ILOutput\csharp.tls.all.il .\Calc.tls.Cs\bin\Debug\net6.0\calc.tls.cs.dll

..\..\ildasm /all /METADATA /out=.\ILOutput\vb.all.il .\Calc.vb\bin\Debug\net6.0\calc.vb.dll
..\..\ildasm /out=.\ILOutput\vb.il .\Calc.vb\bin\Debug\net6.0\calc.vb.dll

..\..\ildasm /all /METADATA /out=.\ILOutput\fsharp.all.il .\Calc.vb\bin\Debug\net6.0\calc.vb.dll
..\..\ildasm /out=.\ILOutput\fsharp.il .\Calc.vb\bin\Debug\net6.0\calc.vb.dll

pause
