
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-rc.1.21451.13



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly FunWithRecords
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 36 2E 30 01 00 54 0E 14   // ersion=v6.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 00 )                                  // Name.
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 52 65 63 6F 72 64   // ...FunWithRecord
                                                                                                    73 00 00 )                                        // s..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module FunWithRecords.dll
// MVID: {5F738176-463A-4E3D-8D34-1A928C4078D1}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0000015CA48E0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method EmbeddedAttribute::.ctor

} // end of class Microsoft.CodeAnalysis.EmbeddedAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 84 6B 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ...k....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8[] NullableFlags
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.1
    IL_0009:  newarr     [System.Runtime]System.Byte
    IL_000e:  dup
    IL_000f:  ldc.i4.0
    IL_0010:  ldarg.1
    IL_0011:  stelem.i1
    IL_0012:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_0017:  ret
  } // end of method NullableAttribute::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8[] A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8[] System.Runtime.CompilerServices.NullableAttribute::NullableFlags
    IL_000e:  ret
  } // end of method NullableAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableAttribute

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.NullableContextAttribute
       extends [System.Runtime]System.Attribute
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.AttributeUsageAttribute::.ctor(valuetype [System.Runtime]System.AttributeTargets) = ( 01 00 4C 14 00 00 02 00 54 02 0D 41 6C 6C 6F 77   // ..L.....T..Allow
                                                                                                                                     4D 75 6C 74 69 70 6C 65 00 54 02 09 49 6E 68 65   // Multiple.T..Inhe
                                                                                                                                     72 69 74 65 64 00 )                               // rited.
  .field public initonly uint8 Flag
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint8 A_1) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Attribute::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  stfld      uint8 System.Runtime.CompilerServices.NullableContextAttribute::Flag
    IL_000e:  ret
  } // end of method NullableContextAttribute::.ctor

} // end of class System.Runtime.CompilerServices.NullableContextAttribute

.class private auto ansi beforefieldinit Program
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       823 (0x337)
    .maxstack  3
    .locals init (class FunWithRecords.Car V_0,
             class FunWithRecords.Car V_1,
             class FunWithRecords.CarRecord V_2,
             class FunWithRecords.CarRecord V_3,
             class FunWithRecords.CarRecord V_4,
             class FunWithRecords.CarRecord V_5,
             valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_6)
    IL_0000:  ldstr      "Fun with Records!"
    IL_0005:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000a:  nop
    IL_000b:  ldstr      "/*************** Classes *********************/"
    IL_0010:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0015:  nop
    IL_0016:  newobj     instance void FunWithRecords.Car::.ctor()
    IL_001b:  dup
    IL_001c:  ldstr      "Honda"
    IL_0021:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
    IL_0026:  nop
    IL_0027:  dup
    IL_0028:  ldstr      "Pilot"
    IL_002d:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
    IL_0032:  nop
    IL_0033:  dup
    IL_0034:  ldstr      "Blue"
    IL_0039:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
    IL_003e:  nop
    IL_003f:  stloc.0
    IL_0040:  ldstr      "My car: "
    IL_0045:  call       void [System.Console]System.Console::WriteLine(string)
    IL_004a:  nop
    IL_004b:  ldloc.0
    IL_004c:  call       void Program::'<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car)
    IL_0051:  nop
    IL_0052:  call       void [System.Console]System.Console::WriteLine()
    IL_0057:  nop
    IL_0058:  ldstr      "Honda"
    IL_005d:  ldstr      "Pilot"
    IL_0062:  ldstr      "Blue"
    IL_0067:  newobj     instance void FunWithRecords.Car::.ctor(string,
                                                                 string,
                                                                 string)
    IL_006c:  stloc.1
    IL_006d:  ldstr      "Another variable for my car: "
    IL_0072:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ldloc.1
    IL_0079:  call       void Program::'<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car)
    IL_007e:  nop
    IL_007f:  call       void [System.Console]System.Console::WriteLine()
    IL_0084:  nop
    IL_0085:  ldloca.s   V_6
    IL_0087:  ldc.i4.s   19
    IL_0089:  ldc.i4.1
    IL_008a:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_008f:  ldloca.s   V_6
    IL_0091:  ldstr      "Cars are the same\? "
    IL_0096:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_009b:  nop
    IL_009c:  ldloca.s   V_6
    IL_009e:  ldloc.0
    IL_009f:  ldloc.1
    IL_00a0:  callvirt   instance bool [System.Runtime]System.Object::Equals(object)
    IL_00a5:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_00aa:  nop
    IL_00ab:  ldloca.s   V_6
    IL_00ad:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_00b2:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00b7:  nop
    IL_00b8:  ldloca.s   V_6
    IL_00ba:  ldc.i4.s   29
    IL_00bc:  ldc.i4.1
    IL_00bd:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_00c2:  ldloca.s   V_6
    IL_00c4:  ldstr      "Cars are the same reference\? "
    IL_00c9:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_00ce:  nop
    IL_00cf:  ldloca.s   V_6
    IL_00d1:  ldloc.0
    IL_00d2:  ldloc.1
    IL_00d3:  ceq
    IL_00d5:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_00da:  nop
    IL_00db:  ldloca.s   V_6
    IL_00dd:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_00e2:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00e7:  nop
    IL_00e8:  ldstr      "/*************** RECORDS *********************/"
    IL_00ed:  call       void [System.Console]System.Console::WriteLine(string)
    IL_00f2:  nop
    IL_00f3:  ldstr      "Honda"
    IL_00f8:  ldstr      "Pilot"
    IL_00fd:  ldstr      "Blue"
    IL_0102:  newobj     instance void FunWithRecords.CarRecord::.ctor(string,
                                                                       string,
                                                                       string)
    IL_0107:  stloc.2
    IL_0108:  ldstr      "My car: "
    IL_010d:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0112:  nop
    IL_0113:  ldloc.2
    IL_0114:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0119:  call       void [System.Console]System.Console::WriteLine(string)
    IL_011e:  nop
    IL_011f:  ldstr      "Honda"
    IL_0124:  ldstr      "Pilot"
    IL_0129:  ldstr      "Blue"
    IL_012e:  newobj     instance void FunWithRecords.CarRecord::.ctor(string,
                                                                       string,
                                                                       string)
    IL_0133:  stloc.3
    IL_0134:  ldstr      "Another variable for my car: "
    IL_0139:  call       void [System.Console]System.Console::WriteLine(string)
    IL_013e:  nop
    IL_013f:  ldloc.3
    IL_0140:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0145:  call       void [System.Console]System.Console::WriteLine(string)
    IL_014a:  nop
    IL_014b:  call       void [System.Console]System.Console::WriteLine()
    IL_0150:  nop
    IL_0151:  ldloca.s   V_6
    IL_0153:  ldc.i4.s   25
    IL_0155:  ldc.i4.1
    IL_0156:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_015b:  ldloca.s   V_6
    IL_015d:  ldstr      "CarRecords are the same\? "
    IL_0162:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0167:  nop
    IL_0168:  ldloca.s   V_6
    IL_016a:  ldloc.2
    IL_016b:  ldloc.3
    IL_016c:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_0171:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_0176:  nop
    IL_0177:  ldloca.s   V_6
    IL_0179:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_017e:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0183:  nop
    IL_0184:  ldloca.s   V_6
    IL_0186:  ldc.i4.s   35
    IL_0188:  ldc.i4.1
    IL_0189:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_018e:  ldloca.s   V_6
    IL_0190:  ldstr      "CarRecords are the same reference\? "
    IL_0195:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_019a:  nop
    IL_019b:  ldloca.s   V_6
    IL_019d:  ldloc.2
    IL_019e:  ldloc.3
    IL_019f:  ceq
    IL_01a1:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_01a6:  nop
    IL_01a7:  ldloca.s   V_6
    IL_01a9:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_01ae:  call       void [System.Console]System.Console::WriteLine(string)
    IL_01b3:  nop
    IL_01b4:  ldloca.s   V_6
    IL_01b6:  ldc.i4.s   25
    IL_01b8:  ldc.i4.1
    IL_01b9:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_01be:  ldloca.s   V_6
    IL_01c0:  ldstr      "CarRecords are the same\? "
    IL_01c5:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_01ca:  nop
    IL_01cb:  ldloca.s   V_6
    IL_01cd:  ldloc.2
    IL_01ce:  ldloc.3
    IL_01cf:  call       bool FunWithRecords.CarRecord::op_Equality(class FunWithRecords.CarRecord,
                                                                    class FunWithRecords.CarRecord)
    IL_01d4:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_01d9:  nop
    IL_01da:  ldloca.s   V_6
    IL_01dc:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_01e1:  call       void [System.Console]System.Console::WriteLine(string)
    IL_01e6:  nop
    IL_01e7:  ldloca.s   V_6
    IL_01e9:  ldc.i4.s   29
    IL_01eb:  ldc.i4.1
    IL_01ec:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_01f1:  ldloca.s   V_6
    IL_01f3:  ldstr      "CarRecords are not the same\? "
    IL_01f8:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_01fd:  nop
    IL_01fe:  ldloca.s   V_6
    IL_0200:  ldloc.2
    IL_0201:  ldloc.3
    IL_0202:  call       bool FunWithRecords.CarRecord::op_Inequality(class FunWithRecords.CarRecord,
                                                                      class FunWithRecords.CarRecord)
    IL_0207:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_020c:  nop
    IL_020d:  ldloca.s   V_6
    IL_020f:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_0214:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0219:  nop
    IL_021a:  ldloc.3
    IL_021b:  stloc.s    V_4
    IL_021d:  ldstr      "Car Record copy results"
    IL_0222:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0227:  nop
    IL_0228:  ldloca.s   V_6
    IL_022a:  ldc.i4.s   25
    IL_022c:  ldc.i4.1
    IL_022d:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0232:  ldloca.s   V_6
    IL_0234:  ldstr      "CarRecords are the same\? "
    IL_0239:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_023e:  nop
    IL_023f:  ldloca.s   V_6
    IL_0241:  ldloc.s    V_4
    IL_0243:  ldloc.3
    IL_0244:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_0249:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_024e:  nop
    IL_024f:  ldloca.s   V_6
    IL_0251:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_0256:  call       void [System.Console]System.Console::WriteLine(string)
    IL_025b:  nop
    IL_025c:  ldloca.s   V_6
    IL_025e:  ldc.i4.s   25
    IL_0260:  ldc.i4.1
    IL_0261:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0266:  ldloca.s   V_6
    IL_0268:  ldstr      "CarRecords are the same\? "
    IL_026d:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0272:  nop
    IL_0273:  ldloca.s   V_6
    IL_0275:  ldloc.s    V_4
    IL_0277:  ldloc.3
    IL_0278:  ceq
    IL_027a:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_027f:  nop
    IL_0280:  ldloca.s   V_6
    IL_0282:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_0287:  call       void [System.Console]System.Console::WriteLine(string)
    IL_028c:  nop
    IL_028d:  call       void [System.Console]System.Console::WriteLine()
    IL_0292:  nop
    IL_0293:  ldloc.2
    IL_0294:  callvirt   instance class FunWithRecords.CarRecord FunWithRecords.CarRecord::'<Clone>$'()
    IL_0299:  dup
    IL_029a:  ldstr      "Odyssee"
    IL_029f:  callvirt   instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Model(string)
    IL_02a4:  nop
    IL_02a5:  stloc.s    V_5
    IL_02a7:  ldstr      "My copied car:"
    IL_02ac:  call       void [System.Console]System.Console::WriteLine(string)
    IL_02b1:  nop
    IL_02b2:  ldloc.s    V_5
    IL_02b4:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_02b9:  call       void [System.Console]System.Console::WriteLine(string)
    IL_02be:  nop
    IL_02bf:  ldstr      "Car Record copy using with expression results"
    IL_02c4:  call       void [System.Console]System.Console::WriteLine(string)
    IL_02c9:  nop
    IL_02ca:  ldloca.s   V_6
    IL_02cc:  ldc.i4.s   25
    IL_02ce:  ldc.i4.1
    IL_02cf:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_02d4:  ldloca.s   V_6
    IL_02d6:  ldstr      "CarRecords are the same\? "
    IL_02db:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_02e0:  nop
    IL_02e1:  ldloca.s   V_6
    IL_02e3:  ldloc.s    V_5
    IL_02e5:  ldloc.2
    IL_02e6:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_02eb:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_02f0:  nop
    IL_02f1:  ldloca.s   V_6
    IL_02f3:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_02f8:  call       void [System.Console]System.Console::WriteLine(string)
    IL_02fd:  nop
    IL_02fe:  ldloca.s   V_6
    IL_0300:  ldc.i4.s   25
    IL_0302:  ldc.i4.1
    IL_0303:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_0308:  ldloca.s   V_6
    IL_030a:  ldstr      "CarRecords are the same\? "
    IL_030f:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0314:  nop
    IL_0315:  ldloca.s   V_6
    IL_0317:  ldloc.s    V_5
    IL_0319:  ldloc.2
    IL_031a:  ceq
    IL_031c:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<bool>(!!0)
    IL_0321:  nop
    IL_0322:  ldloca.s   V_6
    IL_0324:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_0329:  call       void [System.Console]System.Console::WriteLine(string)
    IL_032e:  nop
    IL_032f:  call       string [System.Console]System.Console::ReadLine()
    IL_0334:  pop
    IL_0335:  nop
    IL_0336:  ret
  } // end of method Program::'<Main>$'

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Program::.ctor

  .method assembly hidebysig static void 
          '<<Main>$>g__DisplayCarStats|0_0'(class FunWithRecords.Car c) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       53 (0x35)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Car Make: {0}"
    IL_0006:  ldarg.0
    IL_0007:  callvirt   instance string FunWithRecords.Car::get_Make()
    IL_000c:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0011:  nop
    IL_0012:  ldstr      "Car Model: {0}"
    IL_0017:  ldarg.0
    IL_0018:  callvirt   instance string FunWithRecords.Car::get_Model()
    IL_001d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0022:  nop
    IL_0023:  ldstr      "Car Color: {0}"
    IL_0028:  ldarg.0
    IL_0029:  callvirt   instance string FunWithRecords.Car::get_Color()
    IL_002e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0033:  nop
    IL_0034:  ret
  } // end of method Program::'<<Main>$>g__DisplayCarStats|0_0'

} // end of class Program

.class private auto ansi beforefieldinit FunWithRecords.Car
       extends [System.Runtime]System.Object
{
  .field private initonly string '<Make>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Model>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance string 
          get_Make() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Make>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Make

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Make(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Make>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Make

  .method public hidebysig specialname instance string 
          get_Model() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Model>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Model

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Model(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Model>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Model

  .method public hidebysig specialname instance string 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.Car::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method Car::get_Color

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Color(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.Car::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method Car::set_Color

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Car::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string make,
                               string model,
                               string color) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
    IL_000f:  nop
    IL_0010:  ldarg.0
    IL_0011:  ldarg.2
    IL_0012:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldarg.3
    IL_001a:  call       instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
    IL_001f:  nop
    IL_0020:  ret
  } // end of method Car::.ctor

  .property instance callconv(8) string Make()
  {
    .get instance string FunWithRecords.Car::get_Make()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Make(string)
  } // end of property Car::Make
  .property instance callconv(8) string Model()
  {
    .get instance string FunWithRecords.Car::get_Model()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Model(string)
  } // end of property Car::Model
  .property instance callconv(8) string Color()
  {
    .get instance string FunWithRecords.Car::get_Color()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.Car::set_Color(string)
  } // end of property Car::Color
} // end of class FunWithRecords.Car

.class public auto ansi beforefieldinit FunWithRecords.CarRecord
       extends [System.Runtime]System.Object
       implements class [System.Runtime]System.IEquatable`1<class FunWithRecords.CarRecord>
{
  .field private initonly string '<Make>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Model>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly string '<Color>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string Make,
                               string Model,
                               string Color) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_000e:  ldarg.0
    IL_000f:  ldarg.3
    IL_0010:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0015:  ldarg.0
    IL_0016:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001b:  nop
    IL_001c:  ret
  } // end of method CarRecord::.ctor

  .method family hidebysig newslot specialname virtual 
          instance class [System.Runtime]System.Type 
          get_EqualityContract() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldtoken    FunWithRecords.CarRecord
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  ret
  } // end of method CarRecord::get_EqualityContract

  .method public hidebysig specialname instance string 
          get_Make() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Make

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Make(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Make

  .method public hidebysig specialname instance string 
          get_Model() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Model

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Model(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Model

  .method public hidebysig specialname instance string 
          get_Color() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0006:  ret
  } // end of method CarRecord::get_Color

  .method public hidebysig specialname instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) 
          set_Color(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0007:  ret
  } // end of method CarRecord::set_Color

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       64 (0x40)
    .maxstack  2
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldstr      "CarRecord"
    IL_000c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0011:  pop
    IL_0012:  ldloc.0
    IL_0013:  ldstr      " { "
    IL_0018:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_001d:  pop
    IL_001e:  ldarg.0
    IL_001f:  ldloc.0
    IL_0020:  callvirt   instance bool FunWithRecords.CarRecord::PrintMembers(class [System.Runtime]System.Text.StringBuilder)
    IL_0025:  brfalse.s  IL_0030

    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.s   32
    IL_002a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_002f:  pop
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.s   125
    IL_0033:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0038:  pop
    IL_0039:  ldloc.0
    IL_003a:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_003f:  ret
  } // end of method CarRecord::ToString

  .method family hidebysig newslot virtual 
          instance bool  PrintMembers(class [System.Runtime]System.Text.StringBuilder builder) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       82 (0x52)
    .maxstack  2
    IL_0000:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::EnsureSufficientExecutionStack()
    IL_0005:  ldarg.1
    IL_0006:  ldstr      "Make = "
    IL_000b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0010:  pop
    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  call       instance string FunWithRecords.CarRecord::get_Make()
    IL_0018:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_001d:  pop
    IL_001e:  ldarg.1
    IL_001f:  ldstr      ", Model = "
    IL_0024:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0029:  pop
    IL_002a:  ldarg.1
    IL_002b:  ldarg.0
    IL_002c:  call       instance string FunWithRecords.CarRecord::get_Model()
    IL_0031:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_0036:  pop
    IL_0037:  ldarg.1
    IL_0038:  ldstr      ", Color = "
    IL_003d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0042:  pop
    IL_0043:  ldarg.1
    IL_0044:  ldarg.0
    IL_0045:  call       instance string FunWithRecords.CarRecord::get_Color()
    IL_004a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(object)
    IL_004f:  pop
    IL_0050:  ldc.i4.1
    IL_0051:  ret
  } // end of method CarRecord::PrintMembers

  .method public hidebysig specialname static 
          bool  op_Inequality(class FunWithRecords.CarRecord left,
                              class FunWithRecords.CarRecord right) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       11 (0xb)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       bool FunWithRecords.CarRecord::op_Equality(class FunWithRecords.CarRecord,
                                                                    class FunWithRecords.CarRecord)
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  ret
  } // end of method CarRecord::op_Inequality

  .method public hidebysig specialname static 
          bool  op_Equality(class FunWithRecords.CarRecord left,
                            class FunWithRecords.CarRecord right) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  beq.s      IL_0013

    IL_0004:  ldarg.0
    IL_0005:  brfalse.s  IL_0010

    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_000e:  br.s       IL_0011

    IL_0010:  ldc.i4.0
    IL_0011:  br.s       IL_0014

    IL_0013:  ldc.i4.1
    IL_0014:  ret
  } // end of method CarRecord::op_Equality

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    // Code size       86 (0x56)
    .maxstack  3
    IL_0000:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::get_Default()
    IL_0005:  ldarg.0
    IL_0006:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_000b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<class [System.Runtime]System.Type>::GetHashCode(!0)
    IL_0010:  ldc.i4     0xa5555529
    IL_0015:  mul
    IL_0016:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_001b:  ldarg.0
    IL_001c:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0021:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_0026:  add
    IL_0027:  ldc.i4     0xa5555529
    IL_002c:  mul
    IL_002d:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0032:  ldarg.0
    IL_0033:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0038:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_003d:  add
    IL_003e:  ldc.i4     0xa5555529
    IL_0043:  mul
    IL_0044:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0049:  ldarg.0
    IL_004a:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_004f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::GetHashCode(!0)
    IL_0054:  add
    IL_0055:  ret
  } // end of method CarRecord::GetHashCode

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  isinst     FunWithRecords.CarRecord
    IL_0007:  callvirt   instance bool FunWithRecords.CarRecord::Equals(class FunWithRecords.CarRecord)
    IL_000c:  ret
  } // end of method CarRecord::Equals

  .method public hidebysig newslot virtual 
          instance bool  Equals(class FunWithRecords.CarRecord other) cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 ) 
    // Code size       103 (0x67)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  beq.s      IL_0065

    IL_0004:  ldarg.1
    IL_0005:  brfalse.s  IL_0062

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
    IL_0013:  call       bool [System.Runtime]System.Type::op_Equality(class [System.Runtime]System.Type,
                                                                       class [System.Runtime]System.Type)
    IL_0018:  brfalse.s  IL_0062

    IL_001a:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_001f:  ldarg.0
    IL_0020:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0025:  ldarg.1
    IL_0026:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_002b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_0030:  brfalse.s  IL_0062

    IL_0032:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_0037:  ldarg.0
    IL_0038:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_003d:  ldarg.1
    IL_003e:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_0043:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_0048:  brfalse.s  IL_0062

    IL_004a:  call       class [System.Collections]System.Collections.Generic.EqualityComparer`1<!0> class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::get_Default()
    IL_004f:  ldarg.0
    IL_0050:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0055:  ldarg.1
    IL_0056:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_005b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.EqualityComparer`1<string>::Equals(!0,
                                                                                                                               !0)
    IL_0060:  br.s       IL_0063

    IL_0062:  ldc.i4.0
    IL_0063:  br.s       IL_0066

    IL_0065:  ldc.i4.1
    IL_0066:  ret
  } // end of method CarRecord::Equals

  .method public hidebysig newslot virtual 
          instance class FunWithRecords.CarRecord 
          '<Clone>$'() cil managed
  {
    .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void FunWithRecords.CarRecord::.ctor(class FunWithRecords.CarRecord)
    IL_0006:  ret
  } // end of method CarRecord::'<Clone>$'

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class FunWithRecords.CarRecord original) cil managed
  {
    .param [1]
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    // Code size       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_000e:  stfld      string FunWithRecords.CarRecord::'<Make>k__BackingField'
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  ldfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_001a:  stfld      string FunWithRecords.CarRecord::'<Model>k__BackingField'
    IL_001f:  ldarg.0
    IL_0020:  ldarg.1
    IL_0021:  ldfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_0026:  stfld      string FunWithRecords.CarRecord::'<Color>k__BackingField'
    IL_002b:  ret
  } // end of method CarRecord::.ctor

  .method public hidebysig instance void 
          Deconstruct([out] string& Make,
                      [out] string& Model,
                      [out] string& Color) cil managed
  {
    // Code size       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance string FunWithRecords.CarRecord::get_Make()
    IL_0007:  stind.ref
    IL_0008:  ldarg.2
    IL_0009:  ldarg.0
    IL_000a:  call       instance string FunWithRecords.CarRecord::get_Model()
    IL_000f:  stind.ref
    IL_0010:  ldarg.3
    IL_0011:  ldarg.0
    IL_0012:  call       instance string FunWithRecords.CarRecord::get_Color()
    IL_0017:  stind.ref
    IL_0018:  ret
  } // end of method CarRecord::Deconstruct

  .property instance callconv(8) class [System.Runtime]System.Type
          EqualityContract()
  {
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 01 00 00 ) 
    .get instance class [System.Runtime]System.Type FunWithRecords.CarRecord::get_EqualityContract()
  } // end of property CarRecord::EqualityContract
  .property instance callconv(8) string Make()
  {
    .get instance string FunWithRecords.CarRecord::get_Make()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Make(string)
  } // end of property CarRecord::Make
  .property instance callconv(8) string Model()
  {
    .get instance string FunWithRecords.CarRecord::get_Model()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Model(string)
  } // end of property CarRecord::Model
  .property instance callconv(8) string Color()
  {
    .get instance string FunWithRecords.CarRecord::get_Color()
    .set instance void modreq([System.Runtime]System.Runtime.CompilerServices.IsExternalInit) FunWithRecords.CarRecord::set_Color(string)
  } // end of property CarRecord::Color
} // end of class FunWithRecords.CarRecord


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\ILOutput\records.res
