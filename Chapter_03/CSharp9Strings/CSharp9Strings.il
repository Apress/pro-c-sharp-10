
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-preview.3.21201.4



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 5:0:0:0
}
.assembly CSharp9Strings
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56   // ....NETCoreApp,V
                                                                                                              65 72 73 69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14   // ersion=v5.0..T..
                                                                                                              46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79   // FrameworkDisplay
                                                                                                              4E 61 6D 65 00 )                                  // Name.
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0E 43 53 68 61 72 70 39 53 74 72 69 6E 67   // ...CSharp9String
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 43 53 68 61 72 70 39 53 74 72 69 6E 67   // ...CSharp9String
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 43 53 68 61 72 70 39 53 74 72 69 6E 67   // ...CSharp9String
                                                                                                    73 00 00 )                                        // s..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module CSharp9Strings.dll
// MVID: {43A236B3-B6ED-463C-AF4F-5A0FC2DFB3D9}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0000015C44ED0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit CSharp9Strings.Program
       extends [System.Runtime]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       56 (0x38)
    .maxstack  3
    .locals init (int32 V_0,
             string V_1,
             string V_2,
             string V_3)
    IL_0000:  nop
    IL_0001:  ldc.i4.4
    IL_0002:  stloc.0
    IL_0003:  ldstr      "Soren"
    IL_0008:  stloc.1
    IL_0009:  ldstr      "\tHello {0} you are {1} years old."
    IL_000e:  ldloc.1
    IL_000f:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_0014:  ldloc.0
    IL_0015:  box        [System.Runtime]System.Int32
    IL_001a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object,
                                                                      object)
    IL_001f:  stloc.2
    IL_0020:  ldstr      "\tHello {0} you are {1} years old."
    IL_0025:  ldloc.1
    IL_0026:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_002b:  ldloc.0
    IL_002c:  box        [System.Runtime]System.Int32
    IL_0031:  call       string [System.Runtime]System.String::Format(string,
                                                                      object,
                                                                      object)
    IL_0036:  stloc.3
    IL_0037:  ret
  } // end of method Program::Main

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

} // end of class CSharp9Strings.Program


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\CSharp9Strings\CSharp9Strings.res
