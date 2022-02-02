cd SimpleCSharpApp
dotnet build
cd ..\FunWithStrings
dotnet build
cd ..


if EXIST .\SimpleCSharpApp\ILOutput GOTO NextCheck
MD .\SimpleCSharpApp\ILOutput
:NextCheck
if EXIST .\FunWithStrings\ILOutput GOTO CREATEIL
MD .\FunWithStrings\ILOutput
:CREATEIL

REM ..\..\ildasm /all /METADATA /out=.\ILOutput\SimpleCSharpApp.all.il .\bin\Debug\net6.0\SimpleCSharpApp.dll
..\ildasm /out=.\SimpleCSharpApp\ILOutput\SimpleCSharpApp.il .\SimpleCSharpApp\bin\Debug\net6.0\SimpleCSharpApp.dll
..\ildasm /out=.\FunWithStrings\ILOutput\FunWithStrings.il .\FunWithStrings\bin\Debug\net6.0\FunWithStrings.dll

..\ildasm /out=.\CSharp9Strings\CSharp9Strings.il .\CSharp9Strings\bin\debug\net5.0\CSharp9Strings.dll 
pause
