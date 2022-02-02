
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern Microsoft.VisualBasic.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 11:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly Calc.Vb
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 07 43 61 6C 63 2E 56 62 00 00 )             // ...Calc.Vb..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 07 43 61 6C 63 2E 56 62 00 00 )             // ...Calc.Vb..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 07 43 61 6C 63 2E 56 62 00 00 )             // ...Calc.Vb..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module Calc.Vb.dll
// MVID: {681D82EE-6596-4686-A36C-BE590CE599CE}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000255B3F30000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed Calc.Vb.Program
       extends [System.Runtime]System.Object
{
  .custom instance void [Microsoft.VisualBasic.Core]Microsoft.VisualBasic.CompilerServices.StandardModuleAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public static void  Main(string[] args) cil managed
  {
    .entrypoint
    .custom instance void [System.Runtime]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       42 (0x2a)
    .maxstack  3
    .locals init (class Calc.Vb.Calc V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void Calc.Vb.Calc::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  ldc.i4.s   84
    IL_000c:  callvirt   instance int32 Calc.Vb.Calc::Add(int32,
                                                          int32)
    IL_0011:  stloc.1
    IL_0012:  ldstr      "10 + 84 is {0}"
    IL_0017:  ldloc.1
    IL_0018:  box        [System.Runtime]System.Int32
    IL_001d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0022:  nop
    IL_0023:  call       string [System.Console]System.Console::ReadLine()
    IL_0028:  pop
    IL_0029:  ret
  } // end of method Program::Main

} // end of class Calc.Vb.Program

.class private auto ansi Calc.Vb.Calc
       extends [System.Runtime]System.Object
{
  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Calc::.ctor

  .method public instance int32  Add(int32 addend1,
                                     int32 addend2) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  add.ovf
    IL_0004:  stloc.0
    IL_0005:  br.s       IL_0007

    IL_0007:  ldloc.0
    IL_0008:  ret
  } // end of method Calc::Add

} // end of class Calc.Vb.Calc


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\ILOutput\fsharp.res
