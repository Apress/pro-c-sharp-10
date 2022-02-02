cd FunWithRecords
dotnet build

if EXIST .\ILOutput GOTO CREATEIL
MD .\ILOutput
:CREATEIL

REM ..\ildasm /all /METADATA /out=.\ILOutput\records.il .\bin\Debug\net6.0\FunWithRecords.dll
..\..\ildasm /out=.\ILOutput\records.il .\bin\Debug\net6.0\FunWithRecords.dll

cd ..

pause
