
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-preview.3.21201.4



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
.assembly FunWithStrings
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 53 74 72 69 6E 67   // ...FunWithString
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 53 74 72 69 6E 67   // ...FunWithString
                                                                                                      73 00 00 )                                        // s..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 46 75 6E 57 69 74 68 53 74 72 69 6E 67   // ...FunWithString
                                                                                                    73 00 00 )                                        // s..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module FunWithStrings.dll
// MVID: {28127124-6EE1-4D79-9145-AF34F9C3790F}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x0000018103A30000


// =============== CLASS MEMBERS DECLARATION ===================

.class private abstract auto ansi sealed beforefieldinit '<Program>$'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       84 (0x54)
    .maxstack  1
    IL_0000:  call       void '<Program>$'::'<<Main>$>g__BasicStringFunctionality|0_0'()
    IL_0005:  nop
    IL_0006:  call       void '<Program>$'::'<<Main>$>g__StringConcatenation|0_1'()
    IL_000b:  nop
    IL_000c:  call       void '<Program>$'::'<<Main>$>g__StringInterpolation|0_4'()
    IL_0011:  nop
    IL_0012:  call       void '<Program>$'::'<<Main>$>g__StringInterpolationWithDefaultInterpolatedStringHandler|0_5'()
    IL_0017:  nop
    IL_0018:  call       void '<Program>$'::'<<Main>$>g__EscapeChars|0_2'()
    IL_001d:  nop
    IL_001e:  call       void '<Program>$'::'<<Main>$>g__VerbatimStrings|0_3'()
    IL_0023:  nop
    IL_0024:  call       void '<Program>$'::'<<Main>$>g__StringEquality|0_6'()
    IL_0029:  nop
    IL_002a:  call       void '<Program>$'::'<<Main>$>g__StringEqualitySpecifyingCompareRules|0_7'()
    IL_002f:  nop
    IL_0030:  call       void '<Program>$'::'<<Main>$>g__StringsAreImmutable|0_8'()
    IL_0035:  nop
    IL_0036:  call       void '<Program>$'::'<<Main>$>g__StringsAreImmutable2|0_9'()
    IL_003b:  nop
    IL_003c:  call       void '<Program>$'::'<<Main>$>g__FunWithStringBuilder|0_10'()
    IL_0041:  nop
    IL_0042:  call       string [System.Console]System.Console::ReadLine()
    IL_0047:  pop
    IL_0048:  nop
    IL_0049:  nop
    IL_004a:  nop
    IL_004b:  nop
    IL_004c:  nop
    IL_004d:  nop
    IL_004e:  nop
    IL_004f:  nop
    IL_0050:  nop
    IL_0051:  nop
    IL_0052:  nop
    IL_0053:  ret
  } // end of method '<Program>$'::'<Main>$'

  .method assembly hidebysig static void 
          '<<Main>$>g__BasicStringFunctionality|0_0'() cil managed
  {
    // Code size       147 (0x93)
    .maxstack  4
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "=> Basic String functionality:"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Freddy"
    IL_0011:  stloc.0
    IL_0012:  ldstr      "Value of firstName: {0}"
    IL_0017:  ldloc.0
    IL_0018:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_001d:  nop
    IL_001e:  ldstr      "firstName has {0} characters."
    IL_0023:  ldloc.0
    IL_0024:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0029:  box        [System.Runtime]System.Int32
    IL_002e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0033:  nop
    IL_0034:  ldstr      "firstName in uppercase: {0}"
    IL_0039:  ldloc.0
    IL_003a:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_003f:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0044:  nop
    IL_0045:  ldstr      "firstName in lowercase: {0}"
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance string [System.Runtime]System.String::ToLower()
    IL_0050:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0055:  nop
    IL_0056:  ldstr      "firstName contains the letter y\?: {0}"
    IL_005b:  ldloc.0
    IL_005c:  ldstr      "y"
    IL_0061:  callvirt   instance bool [System.Runtime]System.String::Contains(string)
    IL_0066:  box        [System.Runtime]System.Boolean
    IL_006b:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0070:  nop
    IL_0071:  ldstr      "New first name: {0}"
    IL_0076:  ldloc.0
    IL_0077:  ldstr      "dy"
    IL_007c:  ldstr      ""
    IL_0081:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0086:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_008b:  nop
    IL_008c:  call       void [System.Console]System.Console::WriteLine()
    IL_0091:  nop
    IL_0092:  ret
  } // end of method '<Program>$'::'<<Main>$>g__BasicStringFunctionality|0_0'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringConcatenation|0_1'() cil managed
  {
    // Code size       61 (0x3d)
    .maxstack  2
    .locals init (string V_0,
             string V_1,
             string V_2,
             string V_3)
    IL_0000:  nop
    IL_0001:  ldstr      "=> String concatenation:"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Programming the "
    IL_0011:  stloc.0
    IL_0012:  ldstr      "PsychoDrill (PTP)"
    IL_0017:  stloc.1
    IL_0018:  ldloc.0
    IL_0019:  ldloc.1
    IL_001a:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_001f:  stloc.2
    IL_0020:  ldloc.2
    IL_0021:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0026:  nop
    IL_0027:  ldloc.0
    IL_0028:  ldloc.1
    IL_0029:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_002e:  stloc.3
    IL_002f:  ldloc.3
    IL_0030:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0035:  nop
    IL_0036:  call       void [System.Console]System.Console::WriteLine()
    IL_003b:  nop
    IL_003c:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringConcatenation|0_1'

  .method assembly hidebysig static void 
          '<<Main>$>g__EscapeChars|0_2'() cil managed
  {
    // Code size       65 (0x41)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 45 00 73 00 63 00 61 00 70 00   // =.>. .E.s.c.a.p.
                                    65 00 20 00 63 00 68 00 61 00 72 00 61 00 63 00   // e. .c.h.a.r.a.c.
                                    74 00 65 00 72 00 73 00 3A 00 07 00 )             // t.e.r.s.:...
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      bytearray (4D 00 6F 00 64 00 65 00 6C 00 09 00 43 00 6F 00   // M.o.d.e.l...C.o.
                                    6C 00 6F 00 72 00 09 00 53 00 70 00 65 00 65 00   // l.o.r...S.p.e.e.
                                    64 00 09 00 50 00 65 00 74 00 20 00 4E 00 61 00   // d...P.e.t. .N.a.
                                    6D 00 65 00 07 00 20 00 )                         // m.e... .
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0018:  nop
    IL_0019:  ldstr      bytearray (45 00 76 00 65 00 72 00 79 00 6F 00 6E 00 65 00   // E.v.e.r.y.o.n.e.
                                    20 00 6C 00 6F 00 76 00 65 00 73 00 20 00 22 00   //  .l.o.v.e.s. .".
                                    48 00 65 00 6C 00 6C 00 6F 00 20 00 57 00 6F 00   // H.e.l.l.o. .W.o.
                                    72 00 6C 00 64 00 22 00 07 00 20 00 )             // r.l.d."... .
    IL_001e:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0023:  nop
    IL_0024:  ldstr      bytearray (43 00 3A 00 5C 00 4D 00 79 00 41 00 70 00 70 00   // C.:.\.M.y.A.p.p.
                                    5C 00 62 00 69 00 6E 00 5C 00 44 00 65 00 62 00   // \.b.i.n.\.D.e.b.
                                    75 00 67 00 07 00 20 00 )                         // u.g... .
    IL_0029:  call       void [System.Console]System.Console::WriteLine(string)
    IL_002e:  nop
    IL_002f:  ldstr      bytearray (41 00 6C 00 6C 00 20 00 66 00 69 00 6E 00 69 00   // A.l.l. .f.i.n.i.
                                    73 00 68 00 65 00 64 00 2E 00 0A 00 0A 00 0A 00   // s.h.e.d.........
                                    07 00 20 00 )                                     // .. .
    IL_0034:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0039:  nop
    IL_003a:  call       void [System.Console]System.Console::WriteLine()
    IL_003f:  nop
    IL_0040:  ret
  } // end of method '<Program>$'::'<<Main>$>g__EscapeChars|0_2'

  .method assembly hidebysig static void 
          '<<Main>$>g__VerbatimStrings|0_3'() cil managed
  {
    // Code size       98 (0x62)
    .maxstack  2
    .locals init (string V_0,
             string V_1,
             string V_2,
             string V_3)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 56 00 65 00 72 00 62 00 61 00   // =.>. .V.e.r.b.a.
                                    74 00 69 00 6D 00 20 00 73 00 74 00 72 00 69 00   // t.i.m. .s.t.r.i.
                                    6E 00 67 00 73 00 3A 00 07 00 )                   // n.g.s.:...
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "C:\\MyApp\\bin\\Debug"
    IL_0011:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0016:  nop
    IL_0017:  ldstr      "This is a very\r\n            very\r\n                "
    + "very\r\n                    long string"
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0023:  nop
    IL_0024:  ldstr      "Cerebus said \"Darrr! Pret-ty sun-sets\""
    IL_0029:  call       void [System.Console]System.Console::WriteLine(string)
    IL_002e:  nop
    IL_002f:  ldstr      "interpolation"
    IL_0034:  stloc.1
    IL_0035:  ldstr      "This is a very\r\n            very\r\n                "
    + "long string with "
    IL_003a:  ldloc.1
    IL_003b:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0040:  stloc.2
    IL_0041:  ldloc.2
    IL_0042:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0047:  nop
    IL_0048:  ldstr      "This is a very\r\n            very\r\n                "
    + "long string with "
    IL_004d:  ldloc.1
    IL_004e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0053:  stloc.3
    IL_0054:  ldloc.3
    IL_0055:  call       void [System.Console]System.Console::WriteLine(string)
    IL_005a:  nop
    IL_005b:  call       void [System.Console]System.Console::WriteLine()
    IL_0060:  nop
    IL_0061:  ret
  } // end of method '<Program>$'::'<<Main>$>g__VerbatimStrings|0_3'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringInterpolation|0_4'() cil managed
  {
    // Code size       108 (0x6c)
    .maxstack  3
    .locals init (int32 V_0,
             string V_1,
             string V_2,
             valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_3)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 53 00 74 00 72 00 69 00 6E 00   // =.>. .S.t.r.i.n.
                                    67 00 20 00 69 00 6E 00 74 00 65 00 72 00 70 00   // g. .i.n.t.e.r.p.
                                    6F 00 6C 00 61 00 74 00 69 00 6F 00 6E 00 3A 00   // o.l.a.t.i.o.n.:.
                                    07 00 ) 
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.4
    IL_000d:  stloc.0
    IL_000e:  ldstr      "Soren"
    IL_0013:  stloc.1
    IL_0014:  ldloca.s   V_3
    IL_0016:  ldc.i4.s   27
    IL_0018:  ldc.i4.2
    IL_0019:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_001e:  ldloca.s   V_3
    IL_0020:  ldstr      "\tHello "
    IL_0025:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_002a:  nop
    IL_002b:  ldloca.s   V_3
    IL_002d:  ldloc.1
    IL_002e:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_0033:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted(string)
    IL_0038:  nop
    IL_0039:  ldloca.s   V_3
    IL_003b:  ldstr      " you are "
    IL_0040:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0045:  nop
    IL_0046:  ldloca.s   V_3
    IL_0048:  ldloc.0
    IL_0049:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<int32>(!!0)
    IL_004e:  nop
    IL_004f:  ldloca.s   V_3
    IL_0051:  ldstr      " years old."
    IL_0056:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_005b:  nop
    IL_005c:  ldloca.s   V_3
    IL_005e:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_0063:  stloc.2
    IL_0064:  ldloc.2
    IL_0065:  call       void [System.Console]System.Console::WriteLine(string)
    IL_006a:  nop
    IL_006b:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringInterpolation|0_4'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringInterpolationWithDefaultInterpolatedStringHandler|0_5'() cil managed
  {
    // Code size       102 (0x66)
    .maxstack  3
    .locals init (int32 V_0,
             string V_1,
             valuetype [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler V_2,
             string V_3)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 53 00 74 00 72 00 69 00 6E 00   // =.>. .S.t.r.i.n.
                                    67 00 20 00 69 00 6E 00 74 00 65 00 72 00 70 00   // g. .i.n.t.e.r.p.
                                    6F 00 6C 00 61 00 74 00 69 00 6F 00 6E 00 20 00   // o.l.a.t.i.o.n. .
                                    75 00 6E 00 64 00 65 00 72 00 20 00 74 00 68 00   // u.n.d.e.r. .t.h.
                                    65 00 20 00 63 00 6F 00 76 00 65 00 72 00 73 00   // e. .c.o.v.e.r.s.
                                    3A 00 07 00 )                                     // :...
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.4
    IL_000d:  stloc.0
    IL_000e:  ldstr      "Soren"
    IL_0013:  stloc.1
    IL_0014:  ldloca.s   V_2
    IL_0016:  ldc.i4.3
    IL_0017:  ldc.i4.2
    IL_0018:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::.ctor(int32,
                                                                                                                               int32)
    IL_001d:  ldloca.s   V_2
    IL_001f:  ldstr      "\tHello "
    IL_0024:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0029:  nop
    IL_002a:  ldloca.s   V_2
    IL_002c:  ldloc.1
    IL_002d:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted(string)
    IL_0032:  nop
    IL_0033:  ldloca.s   V_2
    IL_0035:  ldstr      " you are "
    IL_003a:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_003f:  nop
    IL_0040:  ldloca.s   V_2
    IL_0042:  ldloc.0
    IL_0043:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendFormatted<int32>(!!0)
    IL_0048:  nop
    IL_0049:  ldloca.s   V_2
    IL_004b:  ldstr      " years old."
    IL_0050:  call       instance void [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::AppendLiteral(string)
    IL_0055:  nop
    IL_0056:  ldloca.s   V_2
    IL_0058:  call       instance string [System.Runtime]System.Runtime.CompilerServices.DefaultInterpolatedStringHandler::ToStringAndClear()
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0064:  nop
    IL_0065:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringInterpolationWithDefaultInterpolatedStringHandler|0_5'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringEquality|0_6'() cil managed
  {
    // Code size       215 (0xd7)
    .maxstack  3
    .locals init (string V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldstr      "=> String equality:"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Hello!"
    IL_0011:  stloc.0
    IL_0012:  ldstr      "Yo!"
    IL_0017:  stloc.1
    IL_0018:  ldstr      "s1 = {0}"
    IL_001d:  ldloc.0
    IL_001e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0023:  nop
    IL_0024:  ldstr      "s2 = {0}"
    IL_0029:  ldloc.1
    IL_002a:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_002f:  nop
    IL_0030:  call       void [System.Console]System.Console::WriteLine()
    IL_0035:  nop
    IL_0036:  ldstr      "s1 == s2: {0}"
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0042:  box        [System.Runtime]System.Boolean
    IL_0047:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_004c:  nop
    IL_004d:  ldstr      "s1 == Hello!: {0}"
    IL_0052:  ldloc.0
    IL_0053:  ldstr      "Hello!"
    IL_0058:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_005d:  box        [System.Runtime]System.Boolean
    IL_0062:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0067:  nop
    IL_0068:  ldstr      "s1 == HELLO!: {0}"
    IL_006d:  ldloc.0
    IL_006e:  ldstr      "HELLO!"
    IL_0073:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0078:  box        [System.Runtime]System.Boolean
    IL_007d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0082:  nop
    IL_0083:  ldstr      "s1 == hello!: {0}"
    IL_0088:  ldloc.0
    IL_0089:  ldstr      "hello!"
    IL_008e:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0093:  box        [System.Runtime]System.Boolean
    IL_0098:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_009d:  nop
    IL_009e:  ldstr      "s1.Equals(s2): {0}"
    IL_00a3:  ldloc.0
    IL_00a4:  ldloc.1
    IL_00a5:  callvirt   instance bool [System.Runtime]System.String::Equals(string)
    IL_00aa:  box        [System.Runtime]System.Boolean
    IL_00af:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00b4:  nop
    IL_00b5:  ldstr      "Yo.Equals(s2): {0}"
    IL_00ba:  ldstr      "Yo!"
    IL_00bf:  ldloc.1
    IL_00c0:  call       instance bool [System.Runtime]System.String::Equals(string)
    IL_00c5:  box        [System.Runtime]System.Boolean
    IL_00ca:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00cf:  nop
    IL_00d0:  call       void [System.Console]System.Console::WriteLine()
    IL_00d5:  nop
    IL_00d6:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringEquality|0_6'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringEqualitySpecifyingCompareRules|0_7'() cil managed
  {
    // Code size       225 (0xe1)
    .maxstack  5
    .locals init (string V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldstr      "=> String equality (Case Insensitive:"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Hello!"
    IL_0011:  stloc.0
    IL_0012:  ldstr      "HELLO!"
    IL_0017:  stloc.1
    IL_0018:  ldstr      "s1 = {0}"
    IL_001d:  ldloc.0
    IL_001e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0023:  nop
    IL_0024:  ldstr      "s2 = {0}"
    IL_0029:  ldloc.1
    IL_002a:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_002f:  nop
    IL_0030:  call       void [System.Console]System.Console::WriteLine()
    IL_0035:  nop
    IL_0036:  ldstr      "Default rules: s1={0},s2={1}s1.Equals(s2): {2}"
    IL_003b:  ldloc.0
    IL_003c:  ldloc.1
    IL_003d:  ldloc.0
    IL_003e:  ldloc.1
    IL_003f:  callvirt   instance bool [System.Runtime]System.String::Equals(string)
    IL_0044:  box        [System.Runtime]System.Boolean
    IL_0049:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object,
                                                                        object,
                                                                        object)
    IL_004e:  nop
    IL_004f:  ldstr      "Ignore case: s1.Equals(s2, StringComparison.Ordina"
    + "lIgnoreCase): {0}"
    IL_0054:  ldloc.0
    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.5
    IL_0057:  callvirt   instance bool [System.Runtime]System.String::Equals(string,
                                                                             valuetype [System.Runtime]System.StringComparison)
    IL_005c:  box        [System.Runtime]System.Boolean
    IL_0061:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0066:  nop
    IL_0067:  ldstr      "Ignore case, Invariant Culture: s1.Equals(s2, Stri"
    + "ngComparison.InvariantCultureIgnoreCase): {0}"
    IL_006c:  ldloc.0
    IL_006d:  ldloc.1
    IL_006e:  ldc.i4.3
    IL_006f:  callvirt   instance bool [System.Runtime]System.String::Equals(string,
                                                                             valuetype [System.Runtime]System.StringComparison)
    IL_0074:  box        [System.Runtime]System.Boolean
    IL_0079:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_007e:  nop
    IL_007f:  call       void [System.Console]System.Console::WriteLine()
    IL_0084:  nop
    IL_0085:  ldstr      "Default rules: s1={0},s2={1} s1.IndexOf(\"E\"): {2}"
    IL_008a:  ldloc.0
    IL_008b:  ldloc.1
    IL_008c:  ldloc.0
    IL_008d:  ldstr      "E"
    IL_0092:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string)
    IL_0097:  box        [System.Runtime]System.Int32
    IL_009c:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object,
                                                                        object,
                                                                        object)
    IL_00a1:  nop
    IL_00a2:  ldstr      "Ignore case: s1.IndexOf(\"E\", StringComparison.Ordi"
    + "nalIgnoreCase): {0}"
    IL_00a7:  ldloc.0
    IL_00a8:  ldstr      "E"
    IL_00ad:  ldc.i4.5
    IL_00ae:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string,
                                                                               valuetype [System.Runtime]System.StringComparison)
    IL_00b3:  box        [System.Runtime]System.Int32
    IL_00b8:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00bd:  nop
    IL_00be:  ldstr      "Ignore case, Invariant Culture: s1.IndexOf(\"E\", St"
    + "ringComparison.InvariantCultureIgnoreCase): {0}"
    IL_00c3:  ldloc.0
    IL_00c4:  ldstr      "E"
    IL_00c9:  ldc.i4.3
    IL_00ca:  callvirt   instance int32 [System.Runtime]System.String::IndexOf(string,
                                                                               valuetype [System.Runtime]System.StringComparison)
    IL_00cf:  box        [System.Runtime]System.Int32
    IL_00d4:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_00d9:  nop
    IL_00da:  call       void [System.Console]System.Console::WriteLine()
    IL_00df:  nop
    IL_00e0:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringEqualitySpecifyingCompareRules|0_7'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringsAreImmutable|0_8'() cil managed
  {
    // Code size       62 (0x3e)
    .maxstack  2
    .locals init (string V_0,
             string V_1)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 49 00 6D 00 6D 00 75 00 74 00   // =.>. .I.m.m.u.t.
                                    61 00 62 00 6C 00 65 00 20 00 53 00 74 00 72 00   // a.b.l.e. .S.t.r.
                                    69 00 6E 00 67 00 73 00 3A 00 07 00 )             // i.n.g.s.:...
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "This is my string."
    IL_0011:  stloc.0
    IL_0012:  ldstr      "s1 = {0}"
    IL_0017:  ldloc.0
    IL_0018:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_001d:  nop
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance string [System.Runtime]System.String::ToUpper()
    IL_0024:  stloc.1
    IL_0025:  ldstr      "upperString = {0}"
    IL_002a:  ldloc.1
    IL_002b:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0030:  nop
    IL_0031:  ldstr      "s1 = {0}"
    IL_0036:  ldloc.0
    IL_0037:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_003c:  nop
    IL_003d:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringsAreImmutable|0_8'

  .method assembly hidebysig static void 
          '<<Main>$>g__StringsAreImmutable2|0_9'() cil managed
  {
    // Code size       32 (0x20)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      bytearray (3D 00 3E 00 20 00 49 00 6D 00 6D 00 75 00 74 00   // =.>. .I.m.m.u.t.
                                    61 00 62 00 6C 00 65 00 20 00 53 00 74 00 72 00   // a.b.l.e. .S.t.r.
                                    69 00 6E 00 67 00 73 00 20 00 32 00 3A 00 07 00 ) // i.n.g.s. .2.:...
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "My other string"
    IL_0011:  stloc.0
    IL_0012:  ldstr      "New string value"
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  call       void [System.Console]System.Console::WriteLine(string)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method '<Program>$'::'<<Main>$>g__StringsAreImmutable2|0_9'

  .method assembly hidebysig static void 
          '<<Main>$>g__FunWithStringBuilder|0_10'() cil managed
  {
    // Code size       158 (0x9e)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "=> Using the StringBuilder:"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "**** Fantastic Games ****"
    IL_0011:  ldc.i4     0x100
    IL_0016:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor(string,
                                                                                        int32)
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldstr      "\n"
    IL_0022:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0027:  pop
    IL_0028:  ldloc.0
    IL_0029:  ldstr      "Half Life"
    IL_002e:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::AppendLine(string)
    IL_0033:  pop
    IL_0034:  ldloc.0
    IL_0035:  ldstr      "Beyond Good and Evil"
    IL_003a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::AppendLine(string)
    IL_003f:  pop
    IL_0040:  ldloc.0
    IL_0041:  ldstr      "Deus Ex 2"
    IL_0046:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::AppendLine(string)
    IL_004b:  pop
    IL_004c:  ldloc.0
    IL_004d:  ldstr      "System Shock"
    IL_0052:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::AppendLine(string)
    IL_0057:  pop
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_005e:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0063:  nop
    IL_0064:  ldloc.0
    IL_0065:  ldstr      "2"
    IL_006a:  ldstr      "Invisible War"
    IL_006f:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Replace(string,
                                                                                                                                     string)
    IL_0074:  pop
    IL_0075:  ldloc.0
    IL_0076:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_007b:  call       void [System.Console]System.Console::WriteLine(string)
    IL_0080:  nop
    IL_0081:  ldstr      "sb has {0} chars."
    IL_0086:  ldloc.0
    IL_0087:  callvirt   instance int32 [System.Runtime]System.Text.StringBuilder::get_Length()
    IL_008c:  box        [System.Runtime]System.Int32
    IL_0091:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0096:  nop
    IL_0097:  call       void [System.Console]System.Console::WriteLine()
    IL_009c:  nop
    IL_009d:  ret
  } // end of method '<Program>$'::'<<Main>$>g__FunWithStringBuilder|0_10'

} // end of class '<Program>$'


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file .\FunWithStrings\ILOutput\FunWithStrings.res
