
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-preview.2.21154.6



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern System.Console
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly IssuesWithNonGenericCollections
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 1F 49 73 73 75 65 73 57 69 74 68 4E 6F 6E   // ...IssuesWithNon
                                                                                                      47 65 6E 65 72 69 63 43 6F 6C 6C 65 63 74 69 6F   // GenericCollectio
                                                                                                      6E 73 00 00 )                                     // ns..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 1F 49 73 73 75 65 73 57 69 74 68 4E 6F 6E   // ...IssuesWithNon
                                                                                                      47 65 6E 65 72 69 63 43 6F 6C 6C 65 63 74 69 6F   // GenericCollectio
                                                                                                      6E 73 00 00 )                                     // ns..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 1F 49 73 73 75 65 73 57 69 74 68 4E 6F 6E   // ...IssuesWithNon
                                                                                                    47 65 6E 65 72 69 63 43 6F 6C 6C 65 63 74 69 6F   // GenericCollectio
                                                                                                    6E 73 00 00 )                                     // ns..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module IssuesWithNonGenericCollections.dll
// MVID: {110F73CB-A840-4243-97B2-66CECCDDBAB1}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000292B1CC0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private abstract auto ansi sealed beforefieldinit '<Program>$'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       114 (0x72)
    .maxstack  3
    .locals init (int32[] V_0,
             int32[] V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldstr      "***** Issues with Non-Generic Collections *****\n"
    IL_0005:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000a:  nop
    IL_000b:  call       void '<Program>$'::'<<Main>$>g__SimpleBoxUnboxOperation|0_0'()
    IL_0010:  nop
    IL_0011:  call       void '<Program>$'::'<<Main>$>g__WorkWithArrayList|0_1'()
    IL_0016:  nop
    IL_0017:  call       void '<Program>$'::'<<Main>$>g__ArrayListOfRandomObjects|0_2'()
    IL_001c:  nop
    IL_001d:  call       void '<Program>$'::'<<Main>$>g__UsePersonCollection|0_3'()
    IL_0022:  nop
    IL_0023:  call       void [System.Console]System.Console::WriteLine()
    IL_0028:  nop
    IL_0029:  call       void '<Program>$'::'<<Main>$>g__UseGenericList|0_4'()
    IL_002e:  nop
    IL_002f:  call       string [System.Console]System.Console::ReadLine()
    IL_0034:  pop
    IL_0035:  ldc.i4.5
    IL_0036:  newarr     [System.Runtime]System.Int32
    IL_003b:  dup
    IL_003c:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '<PrivateImplementationDetails>'::'33B425BB4299E94C02F3D4313909694437C62111D3B6E6BD8F444D527BFC0FE3'
    IL_0041:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0046:  stloc.0
    IL_0047:  ldloc.0
    IL_0048:  call       void [System.Runtime]System.Array::Sort<int32>(!!0[])
    IL_004d:  nop
    IL_004e:  nop
    IL_004f:  ldloc.0
    IL_0050:  stloc.1
    IL_0051:  ldc.i4.0
    IL_0052:  stloc.2
    IL_0053:  br.s       IL_0066

    IL_0055:  ldloc.1
    IL_0056:  ldloc.2
    IL_0057:  ldelem.i4
    IL_0058:  stloc.3
    IL_0059:  nop
    IL_005a:  ldloc.3
    IL_005b:  call       void [System.Console]System.Console::WriteLine(int32)
    IL_0060:  nop
    IL_0061:  nop
    IL_0062:  ldloc.2
    IL_0063:  ldc.i4.1
    IL_0064:  add
    IL_0065:  stloc.2
    IL_0066:  ldloc.2
    IL_0067:  ldloc.1
    IL_0068:  ldlen
    IL_0069:  conv.i4
    IL_006a:  blt.s      IL_0055

    IL_006c:  nop
    IL_006d:  nop
    IL_006e:  nop
    IL_006f:  nop
    IL_0070:  nop
    IL_0071:  ret
  } // end of method '<Program>$'::'<Main>$'

  .method assembly hidebysig static void 
          '<<Main>$>g__SimpleBoxUnboxOperation|0_0'() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  1
    .locals init (int32 V_0,
             object V_1,
             int32 V_2)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   25
    IL_0003:  stloc.0
    IL_0004:  ldloc.0
    IL_0005:  box        [System.Runtime]System.Int32
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  unbox.any  [System.Runtime]System.Int32
    IL_0011:  stloc.2
    IL_0012:  ret
  } // end of method '<Program>$'::'<<Main>$>g__SimpleBoxUnboxOperation|0_0'

  .method assembly hidebysig static void 
          '<<Main>$>g__WorkWithArrayList|0_1'() cil managed
  {
    // Code size       80 (0x50)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.ArrayList V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  newobj     instance void [System.Runtime]System.Collections.ArrayList::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  box        [System.Runtime]System.Int32
    IL_000f:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0014:  pop
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.s   20
    IL_0018:  box        [System.Runtime]System.Int32
    IL_001d:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0022:  pop
    IL_0023:  ldloc.0
    IL_0024:  ldc.i4.s   35
    IL_0026:  box        [System.Runtime]System.Int32
    IL_002b:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0030:  pop
    IL_0031:  ldloc.0
    IL_0032:  ldc.i4.0
    IL_0033:  callvirt   instance object [System.Runtime]System.Collections.ArrayList::get_Item(int32)
    IL_0038:  unbox.any  [System.Runtime]System.Int32
    IL_003d:  stloc.1
    IL_003e:  ldstr      "Value of your int: {0}"
    IL_0043:  ldloc.1
    IL_0044:  box        [System.Runtime]System.Int32
    IL_0049:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_004e:  nop
    IL_004f:  ret
  } // end of method '<Program>$'::'<<Main>$>g__WorkWithArrayList|0_1'

  .method assembly hidebysig static void 
          '<<Main>$>g__ArrayListOfRandomObjects|0_2'() cil managed
  {
    // Code size       77 (0x4d)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.ArrayList V_0)
    IL_0000:  nop
    IL_0001:  newobj     instance void [System.Runtime]System.Collections.ArrayList::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.1
    IL_0009:  box        [System.Runtime]System.Boolean
    IL_000e:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0013:  pop
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.6
    IL_0016:  ldc.i4.s   10
    IL_0018:  ldc.i4.0
    IL_0019:  newobj     instance void [System.Runtime]System.Version::.ctor(int32,
                                                                             int32)
    IL_001e:  newobj     instance void [System.Runtime]System.OperatingSystem::.ctor(valuetype [System.Runtime]System.PlatformID,
                                                                                     class [System.Runtime]System.Version)
    IL_0023:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0028:  pop
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.s   66
    IL_002c:  box        [System.Runtime]System.Int32
    IL_0031:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_0036:  pop
    IL_0037:  ldloc.0
    IL_0038:  ldc.r8     3.1400000000000001
    IL_0041:  box        [System.Runtime]System.Double
    IL_0046:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_004b:  pop
    IL_004c:  ret
  } // end of method '<Program>$'::'<<Main>$>g__ArrayListOfRandomObjects|0_2'

  .method assembly hidebysig static void 
          '<<Main>$>g__UsePersonCollection|0_3'() cil managed
  {
    // Code size       196 (0xc4)
    .maxstack  4
    .locals init (class IssuesWithNonGenericCollections.PersonCollection V_0,
             class [System.Runtime]System.Collections.IEnumerator V_1,
             class IssuesWithNonGenericCollections.Person V_2,
             class [System.Runtime]System.IDisposable V_3)
    IL_0000:  nop
    IL_0001:  ldstr      "***** Custom Person Collection *****\n"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  newobj     instance void IssuesWithNonGenericCollections.PersonCollection::.ctor()
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldstr      "Homer"
    IL_0018:  ldstr      "Simpson"
    IL_001d:  ldc.i4.s   40
    IL_001f:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_0024:  callvirt   instance void IssuesWithNonGenericCollections.PersonCollection::AddPerson(class IssuesWithNonGenericCollections.Person)
    IL_0029:  nop
    IL_002a:  ldloc.0
    IL_002b:  ldstr      "Marge"
    IL_0030:  ldstr      "Simpson"
    IL_0035:  ldc.i4.s   38
    IL_0037:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_003c:  callvirt   instance void IssuesWithNonGenericCollections.PersonCollection::AddPerson(class IssuesWithNonGenericCollections.Person)
    IL_0041:  nop
    IL_0042:  ldloc.0
    IL_0043:  ldstr      "Lisa"
    IL_0048:  ldstr      "Simpson"
    IL_004d:  ldc.i4.s   9
    IL_004f:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_0054:  callvirt   instance void IssuesWithNonGenericCollections.PersonCollection::AddPerson(class IssuesWithNonGenericCollections.Person)
    IL_0059:  nop
    IL_005a:  ldloc.0
    IL_005b:  ldstr      "Bart"
    IL_0060:  ldstr      "Simpson"
    IL_0065:  ldc.i4.7
    IL_0066:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_006b:  callvirt   instance void IssuesWithNonGenericCollections.PersonCollection::AddPerson(class IssuesWithNonGenericCollections.Person)
    IL_0070:  nop
    IL_0071:  ldloc.0
    IL_0072:  ldstr      "Maggie"
    IL_0077:  ldstr      "Simpson"
    IL_007c:  ldc.i4.2
    IL_007d:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_0082:  callvirt   instance void IssuesWithNonGenericCollections.PersonCollection::AddPerson(class IssuesWithNonGenericCollections.Person)
    IL_0087:  nop
    IL_0088:  nop
    IL_0089:  ldloc.0
    IL_008a:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.IEnumerable::GetEnumerator()
    IL_008f:  stloc.1
    .try
    {
      IL_0090:  br.s       IL_00a7

      IL_0092:  ldloc.1
      IL_0093:  callvirt   instance object [System.Runtime]System.Collections.IEnumerator::get_Current()
      IL_0098:  castclass  IssuesWithNonGenericCollections.Person
      IL_009d:  stloc.2
      IL_009e:  nop
      IL_009f:  ldloc.2
      IL_00a0:  call       void [System.Console]System.Console::WriteLine(object)
      IL_00a5:  nop
      IL_00a6:  nop
      IL_00a7:  ldloc.1
      IL_00a8:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00ad:  brtrue.s   IL_0092

      IL_00af:  leave.s    IL_00c3

    }  // end .try
    finally
    {
      IL_00b1:  ldloc.1
      IL_00b2:  isinst     [System.Runtime]System.IDisposable
      IL_00b7:  stloc.3
      IL_00b8:  ldloc.3
      IL_00b9:  brfalse.s  IL_00c2

      IL_00bb:  ldloc.3
      IL_00bc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c1:  nop
      IL_00c2:  endfinally
    }  // end handler
    IL_00c3:  ret
  } // end of method '<Program>$'::'<<Main>$>g__UsePersonCollection|0_3'

  .method assembly hidebysig static void 
          '<<Main>$>g__UseGenericList|0_4'() cil managed
  {
    // Code size       95 (0x5f)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class IssuesWithNonGenericCollections.Person> V_0,
             class [System.Collections]System.Collections.Generic.List`1<int32> V_1,
             int32 V_2)
    IL_0000:  nop
    IL_0001:  ldstr      "***** Fun with Generics *****\n"
    IL_0006:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class IssuesWithNonGenericCollections.Person>::.ctor()
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldstr      "Frank"
    IL_0018:  ldstr      "Black"
    IL_001d:  ldc.i4.s   50
    IL_001f:  newobj     instance void IssuesWithNonGenericCollections.Person::.ctor(string,
                                                                                     string,
                                                                                     int32)
    IL_0024:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class IssuesWithNonGenericCollections.Person>::Add(!0)
    IL_0029:  nop
    IL_002a:  ldloc.0
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class IssuesWithNonGenericCollections.Person>::get_Item(int32)
    IL_0031:  call       void [System.Console]System.Console::WriteLine(object)
    IL_0036:  nop
    IL_0037:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_003c:  stloc.1
    IL_003d:  ldloc.1
    IL_003e:  ldc.i4.s   10
    IL_0040:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_0045:  nop
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.2
    IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_004d:  nop
    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.0
    IL_0050:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0055:  ldloc.1
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_005c:  add
    IL_005d:  stloc.2
    IL_005e:  ret
  } // end of method '<Program>$'::'<<Main>$>g__UseGenericList|0_4'

} // end of class '<Program>$'

.class public auto ansi beforefieldinit IssuesWithNonGenericCollections.Person
       extends [System.Runtime]System.Object
{
  .field private int32 '<Age>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<FirstName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private string '<LastName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance int32 
          get_Age() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 IssuesWithNonGenericCollections.Person::'<Age>k__BackingField'
    IL_0006:  ret
  } // end of method Person::get_Age

  .method public hidebysig specialname instance void 
          set_Age(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 IssuesWithNonGenericCollections.Person::'<Age>k__BackingField'
    IL_0007:  ret
  } // end of method Person::set_Age

  .method public hidebysig specialname instance string 
          get_FirstName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string IssuesWithNonGenericCollections.Person::'<FirstName>k__BackingField'
    IL_0006:  ret
  } // end of method Person::get_FirstName

  .method public hidebysig specialname instance void 
          set_FirstName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string IssuesWithNonGenericCollections.Person::'<FirstName>k__BackingField'
    IL_0007:  ret
  } // end of method Person::set_FirstName

  .method public hidebysig specialname instance string 
          get_LastName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string IssuesWithNonGenericCollections.Person::'<LastName>k__BackingField'
    IL_0006:  ret
  } // end of method Person::get_LastName

  .method public hidebysig specialname instance void 
          set_LastName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string IssuesWithNonGenericCollections.Person::'<LastName>k__BackingField'
    IL_0007:  ret
  } // end of method Person::set_LastName

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
  } // end of method Person::.ctor

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(string firstName,
                               string lastName,
                               int32 age) cil managed
  {
    // Code size       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldarg.3
    IL_000a:  call       instance void IssuesWithNonGenericCollections.Person::set_Age(int32)
    IL_000f:  nop
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  call       instance void IssuesWithNonGenericCollections.Person::set_FirstName(string)
    IL_0017:  nop
    IL_0018:  ldarg.0
    IL_0019:  ldarg.2
    IL_001a:  call       instance void IssuesWithNonGenericCollections.Person::set_LastName(string)
    IL_001f:  nop
    IL_0020:  ret
  } // end of method Person::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       39 (0x27)
    .maxstack  4
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "Name: {0} {1}, Age: {2}"
    IL_0006:  ldarg.0
    IL_0007:  call       instance string IssuesWithNonGenericCollections.Person::get_FirstName()
    IL_000c:  ldarg.0
    IL_000d:  call       instance string IssuesWithNonGenericCollections.Person::get_LastName()
    IL_0012:  ldarg.0
    IL_0013:  call       instance int32 IssuesWithNonGenericCollections.Person::get_Age()
    IL_0018:  box        [System.Runtime]System.Int32
    IL_001d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object,
                                                                      object,
                                                                      object)
    IL_0022:  stloc.0
    IL_0023:  br.s       IL_0025

    IL_0025:  ldloc.0
    IL_0026:  ret
  } // end of method Person::ToString

  .property instance callconv(8) int32 Age()
  {
    .get instance int32 IssuesWithNonGenericCollections.Person::get_Age()
    .set instance void IssuesWithNonGenericCollections.Person::set_Age(int32)
  } // end of property Person::Age
  .property instance callconv(8) string FirstName()
  {
    .get instance string IssuesWithNonGenericCollections.Person::get_FirstName()
    .set instance void IssuesWithNonGenericCollections.Person::set_FirstName(string)
  } // end of property Person::FirstName
  .property instance callconv(8) string LastName()
  {
    .get instance string IssuesWithNonGenericCollections.Person::get_LastName()
    .set instance void IssuesWithNonGenericCollections.Person::set_LastName(string)
  } // end of property Person::LastName
} // end of class IssuesWithNonGenericCollections.Person

.class public auto ansi beforefieldinit IssuesWithNonGenericCollections.PersonCollection
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.Collections.IEnumerable
{
  .field private class [System.Runtime]System.Collections.ArrayList arPeople
  .method public hidebysig instance class IssuesWithNonGenericCollections.Person 
          GetPerson(int32 pos) cil managed
  {
    // Code size       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance object [System.Runtime]System.Collections.ArrayList::get_Item(int32)
    IL_000c:  castclass  IssuesWithNonGenericCollections.Person
    IL_0011:  ret
  } // end of method PersonCollection::GetPerson

  .method public hidebysig instance void 
          AddPerson(class IssuesWithNonGenericCollections.Person p) cil managed
  {
    // Code size       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::Add(object)
    IL_000d:  pop
    IL_000e:  ret
  } // end of method PersonCollection::AddPerson

  .method public hidebysig instance void 
          ClearPeople() cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_0007:  callvirt   instance void [System.Runtime]System.Collections.ArrayList::Clear()
    IL_000c:  nop
    IL_000d:  ret
  } // end of method PersonCollection::ClearPeople

  .method public hidebysig specialname instance int32 
          get_Count() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_0006:  callvirt   instance int32 [System.Runtime]System.Collections.ArrayList::get_Count()
    IL_000b:  ret
  } // end of method PersonCollection::get_Count

  .method private hidebysig newslot virtual final 
          instance class [System.Runtime]System.Collections.IEnumerator 
          System.Collections.IEnumerable.GetEnumerator() cil managed
  {
    .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
    // Code size       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_0006:  callvirt   instance class [System.Runtime]System.Collections.IEnumerator [System.Runtime]System.Collections.ArrayList::GetEnumerator()
    IL_000b:  ret
  } // end of method PersonCollection::System.Collections.IEnumerable.GetEnumerator

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [System.Runtime]System.Collections.ArrayList::.ctor()
    IL_0006:  stfld      class [System.Runtime]System.Collections.ArrayList IssuesWithNonGenericCollections.PersonCollection::arPeople
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  nop
    IL_0012:  ret
  } // end of method PersonCollection::.ctor

  .property instance callconv(8) int32 Count()
  {
    .get instance int32 IssuesWithNonGenericCollections.PersonCollection::get_Count()
  } // end of property PersonCollection::Count
} // end of class IssuesWithNonGenericCollections.PersonCollection

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=20'
         extends [System.Runtime]System.ValueType
  {
    .pack 1
    .size 20
  } // end of class '__StaticArrayInitTypeSize=20'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=20' '33B425BB4299E94C02F3D4313909694437C62111D3B6E6BD8F444D527BFC0FE3' at I_00003484
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_00003484 = bytearray (
                 0A 00 00 00 04 00 00 00 02 00 00 00 21 00 00 00  // ............!...
                 5D 00 00 00)                                     // ]...
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file csharp.res
