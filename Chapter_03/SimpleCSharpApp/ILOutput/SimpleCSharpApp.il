
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-preview.2.21154.6



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
.assembly SimpleCSharpApp
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0F 53 69 6D 70 6C 65 43 53 68 61 72 70 41   // ...SimpleCSharpA
                                                                                                      70 70 00 00 )                                     // pp..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0F 53 69 6D 70 6C 65 43 53 68 61 72 70 41   // ...SimpleCSharpA
                                                                                                      70 70 00 00 )                                     // pp..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0F 53 69 6D 70 6C 65 43 53 68 61 72 70 41   // ...SimpleCSharpA
                                                                                                    70 70 00 00 )                                     // pp..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module SimpleCSharpApp.dll
// MVID: {E0DE1609-2B7A-4213-95FB-F10A772DBB47}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000001C1BA5D0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private abstract auto ansi sealed beforefieldinit '<Program>$'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static int32 
          '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       169 (0xa9)
    .maxstack  3
    .locals init (string[] V_0,
             int32 V_1,
             bool V_2,
             string[] V_3,
             int32 V_4,
             string V_5,
             string[] V_6,
             int32 V_7,
             string V_8)
    IL_0000:  ldstr      "***** My First C# App *****"
    IL_0005:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000a:  nop
    IL_000b:  ldstr      "Hello World!"
    IL_0010:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0015:  nop
    IL_0016:  call       void [System.Console]System.Console::WriteLine()
    IL_001b:  nop
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_0034

    IL_0020:  nop
    IL_0021:  ldstr      "Arg: {0}"
    IL_0026:  ldarg.0
    IL_0027:  ldloc.1
    IL_0028:  ldelem.ref
    IL_0029:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_002e:  nop
    IL_002f:  nop
    IL_0030:  ldloc.1
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    IL_0035:  ldarg.0
    IL_0036:  ldlen
    IL_0037:  conv.i4
    IL_0038:  clt
    IL_003a:  stloc.2
    IL_003b:  ldloc.2
    IL_003c:  brtrue.s   IL_0020

    IL_003e:  nop
    IL_003f:  ldarg.0
    IL_0040:  stloc.3
    IL_0041:  ldc.i4.0
    IL_0042:  stloc.s    V_4
    IL_0044:  br.s       IL_0061

    IL_0046:  ldloc.3
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldelem.ref
    IL_004a:  stloc.s    V_5
    IL_004c:  nop
    IL_004d:  ldstr      "Arg: {0}"
    IL_0052:  ldloc.s    V_5
    IL_0054:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0059:  nop
    IL_005a:  nop
    IL_005b:  ldloc.s    V_4
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldloc.3
    IL_0064:  ldlen
    IL_0065:  conv.i4
    IL_0066:  blt.s      IL_0046

    IL_0068:  call       string[] [System.Runtime]System.Environment::GetCommandLineArgs()
    IL_006d:  stloc.0
    IL_006e:  nop
    IL_006f:  ldloc.0
    IL_0070:  stloc.s    V_6
    IL_0072:  ldc.i4.0
    IL_0073:  stloc.s    V_7
    IL_0075:  br.s       IL_0093

    IL_0077:  ldloc.s    V_6
    IL_0079:  ldloc.s    V_7
    IL_007b:  ldelem.ref
    IL_007c:  stloc.s    V_8
    IL_007e:  nop
    IL_007f:  ldstr      "Arg: {0}"
    IL_0084:  ldloc.s    V_8
    IL_0086:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_008b:  nop
    IL_008c:  nop
    IL_008d:  ldloc.s    V_7
    IL_008f:  ldc.i4.1
    IL_0090:  add
    IL_0091:  stloc.s    V_7
    IL_0093:  ldloc.s    V_7
    IL_0095:  ldloc.s    V_6
    IL_0097:  ldlen
    IL_0098:  conv.i4
    IL_0099:  blt.s      IL_0077

    IL_009b:  call       void '<Program>$'::'<<Main>$>g__ShowEnvironmentDetails|0_0'()
    IL_00a0:  nop
    IL_00a1:  call       string [System.Console]System.Console::ReadLine()
    IL_00a6:  pop
    IL_00a7:  ldc.i4.m1
    IL_00a8:  ret
  } // end of method '<Program>$'::'<Main>$'

  .method assembly hidebysig static void 
          '<<Main>$>g__ShowEnvironmentDetails|0_0'() cil managed
  {
    // Code size       94 (0x5e)
    .maxstack  2
    .locals init (string[] V_0,
             int32 V_1,
             string V_2)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  call       string[] [System.Runtime]System.Environment::GetLogicalDrives()
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br.s       IL_0022

    IL_000c:  ldloc.0
    IL_000d:  ldloc.1
    IL_000e:  ldelem.ref
    IL_000f:  stloc.2
    IL_0010:  nop
    IL_0011:  ldstr      "Drive: {0}"
    IL_0016:  ldloc.2
    IL_0017:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_001c:  nop
    IL_001d:  nop
    IL_001e:  ldloc.1
    IL_001f:  ldc.i4.1
    IL_0020:  add
    IL_0021:  stloc.1
    IL_0022:  ldloc.1
    IL_0023:  ldloc.0
    IL_0024:  ldlen
    IL_0025:  conv.i4
    IL_0026:  blt.s      IL_000c

    IL_0028:  ldstr      "OS: {0}"
    IL_002d:  call       class [System.Runtime]System.OperatingSystem [System.Runtime]System.Environment::get_OSVersion()
    IL_0032:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0037:  nop
    IL_0038:  ldstr      "Number of processors: {0}"
    IL_003d:  call       int32 [System.Runtime]System.Environment::get_ProcessorCount()
    IL_0042:  box        [System.Runtime]System.Int32
    IL_0047:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_004c:  nop
    IL_004d:  ldstr      ".NET Core Version: {0}"
    IL_0052:  call       class [System.Runtime]System.Version [System.Runtime]System.Environment::get_Version()
    IL_0057:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_005c:  nop
    IL_005d:  ret
  } // end of method '<Program>$'::'<<Main>$>g__ShowEnvironmentDetails|0_0'

} // end of class '<Program>$'


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\SimpleCSharpApp\ILOutput\SimpleCSharpApp.res
