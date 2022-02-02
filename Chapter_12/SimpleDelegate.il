
//  Microsoft (R) .NET IL Disassembler.  Version 6.0.0-preview.2.21154.6


// ================================= M E T A I N F O ================================================

// ===========================================================
// ScopeName : SimpleDelegate.dll
// MVID      : {8B6A66A5-9952-48A7-BE4B-EED9EE654F06}
// ===========================================================
// Global functions
// -------------------------------------------------------
// 
// Global fields
// -------------------------------------------------------
// 
// Global MemberRefs
// -------------------------------------------------------
// 
// TypeDef #1 (02000002)
// -------------------------------------------------------
// 	TypDefName: <Program>$  (02000002)
// 	Flags     : [NotPublic] [AutoLayout] [Class] [Abstract] [Sealed] [AnsiClass] [BeforeFieldInit]  (00100180)
// 	Extends   : 0100000D [TypeRef] System.Object
// 	Method #1 (06000001) [ENTRYPOINT]
// 	-------------------------------------------------------
// 		MethodName: <Main>$ (06000001)
// 		Flags     : [Private] [Static] [HideBySig] [ReuseSlot]  (00000091)
// 		RVA       : 0x00002050
// 		ImplFlags : [IL] [Managed]  (00000000)
// 		CallCnvntn: [DEFAULT]
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  SZArray String
// 		1 Parameters
// 			(1) ParamToken : (08000001) Name : args flags: [none] (00000000)
// 
// 	Method #2 (06000002) 
// 	-------------------------------------------------------
// 		MethodName: <<Main>$>g__DisplayDelegateInfo|0_0 (06000002)
// 		Flags     : [Assem] [Static] [HideBySig] [ReuseSlot]  (00000093)
// 		RVA       : 0x000020a4
// 		ImplFlags : [IL] [Managed]  (00000000)
// 		CallCnvntn: [DEFAULT]
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  Class System.Delegate
// 		1 Parameters
// 			(1) ParamToken : (08000002) Name : delObj flags: [none] (00000000)
// 
// 	CustomAttribute #1 (0c00000b)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a00000b
// 		CustomAttributeName: System.Runtime.CompilerServices.CompilerGeneratedAttribute :: instance void .ctor()
// 		Length: 4
// 		Value : 01 00 00 00                                      >                <
// 		ctor args: ()
// 
// 
// TypeDef #2 (02000003)
// -------------------------------------------------------
// 	TypDefName: BinaryOp  (02000003)
// 	Flags     : [Public] [AutoLayout] [Class] [Sealed] [AnsiClass]  (00000101)
// 	Extends   : 0100000F [TypeRef] System.MulticastDelegate
// 	Method #1 (06000003) 
// 	-------------------------------------------------------
// 		MethodName: .ctor (06000003)
// 		Flags     : [Public] [HideBySig] [ReuseSlot] [SpecialName] [RTSpecialName] [.ctor]  (00001886)
// 		RVA       : 0x00000000
// 		ImplFlags : [Runtime] [Managed]  (00000003)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		2 Arguments
// 			Argument #1:  Object
// 			Argument #2:  I
// 		2 Parameters
// 			(1) ParamToken : (08000003) Name : object flags: [none] (00000000)
// 			(2) ParamToken : (08000004) Name : method flags: [none] (00000000)
// 
// 	Method #2 (06000004) 
// 	-------------------------------------------------------
// 		MethodName: Invoke (06000004)
// 		Flags     : [Public] [Virtual] [HideBySig] [NewSlot]  (000001c6)
// 		RVA       : 0x00000000
// 		ImplFlags : [Runtime] [Managed]  (00000003)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: I4
// 		2 Arguments
// 			Argument #1:  I4
// 			Argument #2:  I4
// 		2 Parameters
// 			(1) ParamToken : (08000005) Name : x flags: [none] (00000000)
// 			(2) ParamToken : (08000006) Name : y flags: [none] (00000000)
// 
// 	Method #3 (06000005) 
// 	-------------------------------------------------------
// 		MethodName: BeginInvoke (06000005)
// 		Flags     : [Public] [Virtual] [HideBySig] [NewSlot]  (000001c6)
// 		RVA       : 0x00000000
// 		ImplFlags : [Runtime] [Managed]  (00000003)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Class System.IAsyncResult
// 		4 Arguments
// 			Argument #1:  I4
// 			Argument #2:  I4
// 			Argument #3:  Class System.AsyncCallback
// 			Argument #4:  Object
// 		4 Parameters
// 			(1) ParamToken : (08000007) Name : x flags: [none] (00000000)
// 			(2) ParamToken : (08000008) Name : y flags: [none] (00000000)
// 			(3) ParamToken : (08000009) Name : callback flags: [none] (00000000)
// 			(4) ParamToken : (0800000a) Name : object flags: [none] (00000000)
// 
// 	Method #4 (06000006) 
// 	-------------------------------------------------------
// 		MethodName: EndInvoke (06000006)
// 		Flags     : [Public] [Virtual] [HideBySig] [NewSlot]  (000001c6)
// 		RVA       : 0x00000000
// 		ImplFlags : [Runtime] [Managed]  (00000003)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: I4
// 		1 Arguments
// 			Argument #1:  Class System.IAsyncResult
// 		1 Parameters
// 			(1) ParamToken : (0800000b) Name : result flags: [none] (00000000)
// 
// 
// TypeDef #3 (02000004)
// -------------------------------------------------------
// 	TypDefName: SimpleDelegate.SimpleMath  (02000004)
// 	Flags     : [Public] [AutoLayout] [Class] [AnsiClass] [BeforeFieldInit]  (00100001)
// 	Extends   : 0100000D [TypeRef] System.Object
// 	Method #1 (06000007) 
// 	-------------------------------------------------------
// 		MethodName: Add (06000007)
// 		Flags     : [Public] [HideBySig] [ReuseSlot]  (00000086)
// 		RVA       : 0x000020f0
// 		ImplFlags : [IL] [Managed]  (00000000)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: I4
// 		2 Arguments
// 			Argument #1:  I4
// 			Argument #2:  I4
// 		2 Parameters
// 			(1) ParamToken : (0800000c) Name : x flags: [none] (00000000)
// 			(2) ParamToken : (0800000d) Name : y flags: [none] (00000000)
// 
// 	Method #2 (06000008) 
// 	-------------------------------------------------------
// 		MethodName: Subtract (06000008)
// 		Flags     : [Public] [HideBySig] [ReuseSlot]  (00000086)
// 		RVA       : 0x000020f5
// 		ImplFlags : [IL] [Managed]  (00000000)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: I4
// 		2 Arguments
// 			Argument #1:  I4
// 			Argument #2:  I4
// 		2 Parameters
// 			(1) ParamToken : (0800000e) Name : x flags: [none] (00000000)
// 			(2) ParamToken : (0800000f) Name : y flags: [none] (00000000)
// 
// 	Method #3 (06000009) 
// 	-------------------------------------------------------
// 		MethodName: .ctor (06000009)
// 		Flags     : [Public] [HideBySig] [ReuseSlot] [SpecialName] [RTSpecialName] [.ctor]  (00001886)
// 		RVA       : 0x000020fa
// 		ImplFlags : [IL] [Managed]  (00000000)
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		No arguments.
// 
// 
// TypeRef #1 (01000001)
// -------------------------------------------------------
// Token:             0x01000001
// ResolutionScope:   0x23000001
// TypeRefName:       System.Runtime.CompilerServices.CompilationRelaxationsAttribute
// 	MemberRef #1 (0a000001)
// 	-------------------------------------------------------
// 		Member: (0a000001) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  I4
// 
// TypeRef #2 (01000002)
// -------------------------------------------------------
// Token:             0x01000002
// ResolutionScope:   0x23000001
// TypeRefName:       System.Runtime.CompilerServices.RuntimeCompatibilityAttribute
// 	MemberRef #1 (0a000002)
// 	-------------------------------------------------------
// 		Member: (0a000002) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		No arguments.
// 
// TypeRef #3 (01000003)
// -------------------------------------------------------
// Token:             0x01000003
// ResolutionScope:   0x23000001
// TypeRefName:       System.Diagnostics.DebuggableAttribute
// 	MemberRef #1 (0a000003)
// 	-------------------------------------------------------
// 		Member: (0a000003) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  ValueClass DebuggingModes
// 
// TypeRef #4 (01000004)
// -------------------------------------------------------
// Token:             0x01000004
// ResolutionScope:   0x01000003
// TypeRefName:       DebuggingModes
// 
// TypeRef #5 (01000005)
// -------------------------------------------------------
// Token:             0x01000005
// ResolutionScope:   0x23000001
// TypeRefName:       System.Runtime.Versioning.TargetFrameworkAttribute
// 	MemberRef #1 (0a000004)
// 	-------------------------------------------------------
// 		Member: (0a000004) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #6 (01000006)
// -------------------------------------------------------
// Token:             0x01000006
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyCompanyAttribute
// 	MemberRef #1 (0a000005)
// 	-------------------------------------------------------
// 		Member: (0a000005) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #7 (01000007)
// -------------------------------------------------------
// Token:             0x01000007
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyConfigurationAttribute
// 	MemberRef #1 (0a000006)
// 	-------------------------------------------------------
// 		Member: (0a000006) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #8 (01000008)
// -------------------------------------------------------
// Token:             0x01000008
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyFileVersionAttribute
// 	MemberRef #1 (0a000007)
// 	-------------------------------------------------------
// 		Member: (0a000007) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #9 (01000009)
// -------------------------------------------------------
// Token:             0x01000009
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyInformationalVersionAttribute
// 	MemberRef #1 (0a000008)
// 	-------------------------------------------------------
// 		Member: (0a000008) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #10 (0100000a)
// -------------------------------------------------------
// Token:             0x0100000a
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyProductAttribute
// 	MemberRef #1 (0a000009)
// 	-------------------------------------------------------
// 		Member: (0a000009) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #11 (0100000b)
// -------------------------------------------------------
// Token:             0x0100000b
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.AssemblyTitleAttribute
// 	MemberRef #1 (0a00000a)
// 	-------------------------------------------------------
// 		Member: (0a00000a) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 
// TypeRef #12 (0100000c)
// -------------------------------------------------------
// Token:             0x0100000c
// ResolutionScope:   0x23000001
// TypeRefName:       System.Runtime.CompilerServices.CompilerGeneratedAttribute
// 	MemberRef #1 (0a00000b)
// 	-------------------------------------------------------
// 		Member: (0a00000b) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		No arguments.
// 
// TypeRef #13 (0100000d)
// -------------------------------------------------------
// Token:             0x0100000d
// ResolutionScope:   0x23000001
// TypeRefName:       System.Object
// 	MemberRef #1 (0a000012)
// 	-------------------------------------------------------
// 		Member: (0a000012) .ctor: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Void
// 		No arguments.
// 
// TypeRef #14 (0100000e)
// -------------------------------------------------------
// Token:             0x0100000e
// ResolutionScope:   0x23000001
// TypeRefName:       System.Delegate
// 	MemberRef #1 (0a00000f)
// 	-------------------------------------------------------
// 		Member: (0a00000f) GetInvocationList: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: SZArray Class System.Delegate
// 		No arguments.
// 	MemberRef #2 (0a000010)
// 	-------------------------------------------------------
// 		Member: (0a000010) get_Method: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Class System.Reflection.MethodInfo
// 		No arguments.
// 	MemberRef #3 (0a000011)
// 	-------------------------------------------------------
// 		Member: (0a000011) get_Target: 
// 		CallCnvntn: [DEFAULT]
// 		hasThis 
// 		ReturnType: Object
// 		No arguments.
// 
// TypeRef #15 (0100000f)
// -------------------------------------------------------
// Token:             0x0100000f
// ResolutionScope:   0x23000001
// TypeRefName:       System.MulticastDelegate
// 
// TypeRef #16 (01000010)
// -------------------------------------------------------
// Token:             0x01000010
// ResolutionScope:   0x23000001
// TypeRefName:       System.IAsyncResult
// 
// TypeRef #17 (01000011)
// -------------------------------------------------------
// Token:             0x01000011
// ResolutionScope:   0x23000001
// TypeRefName:       System.AsyncCallback
// 
// TypeRef #18 (01000012)
// -------------------------------------------------------
// Token:             0x01000012
// ResolutionScope:   0x23000002
// TypeRefName:       System.Console
// 	MemberRef #1 (0a00000c)
// 	-------------------------------------------------------
// 		Member: (0a00000c) WriteLine: 
// 		CallCnvntn: [DEFAULT]
// 		ReturnType: Void
// 		1 Arguments
// 			Argument #1:  String
// 	MemberRef #2 (0a00000d)
// 	-------------------------------------------------------
// 		Member: (0a00000d) WriteLine: 
// 		CallCnvntn: [DEFAULT]
// 		ReturnType: Void
// 		2 Arguments
// 			Argument #1:  String
// 			Argument #2:  Object
// 	MemberRef #3 (0a00000e)
// 	-------------------------------------------------------
// 		Member: (0a00000e) ReadLine: 
// 		CallCnvntn: [DEFAULT]
// 		ReturnType: String
// 		No arguments.
// 
// TypeRef #19 (01000013)
// -------------------------------------------------------
// Token:             0x01000013
// ResolutionScope:   0x23000001
// TypeRefName:       System.Int32
// 
// TypeRef #20 (01000014)
// -------------------------------------------------------
// Token:             0x01000014
// ResolutionScope:   0x23000001
// TypeRefName:       System.Reflection.MethodInfo
// 
// Signature #1 (0x11000001)
// -------------------------------------------------------
// 		CallCnvntn: [LOCALSIG]
// 		2 Arguments
// 			Argument #1:  Class SimpleDelegate.SimpleMath
// 			Argument #2:  Class BinaryOp
// 
// Signature #2 (0x11000002)
// -------------------------------------------------------
// 		CallCnvntn: [LOCALSIG]
// 		3 Arguments
// 			Argument #1:  SZArray Class System.Delegate
// 			Argument #2:  I4
// 			Argument #3:  Class System.Delegate
// 
// Assembly
// -------------------------------------------------------
// 	Token: 0x20000001
// 	Name : SimpleDelegate
// 	Public Key    :
// 	Hash Algorithm : 0x00008004
// 	Version: 1.0.0.0
// 	Major Version: 0x00000001
// 	Minor Version: 0x00000000
// 	Build Number: 0x00000000
// 	Revision Number: 0x00000000
// 	Locale: <null>
// 	Flags : [none] (00000000)
// 	CustomAttribute #1 (0c000001)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000001
// 		CustomAttributeName: System.Runtime.CompilerServices.CompilationRelaxationsAttribute :: instance void .ctor(int32)
// 		Length: 8
// 		Value : 01 00 08 00 00 00 00 00                          >                <
// 		ctor args: (8)
// 
// 	CustomAttribute #2 (0c000002)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000002
// 		CustomAttributeName: System.Runtime.CompilerServices.RuntimeCompatibilityAttribute :: instance void .ctor()
// 		Length: 30
// 		Value : 01 00 01 00 54 02 16 57  72 61 70 4e 6f 6e 45 78 >    T  WrapNonEx<
//                       : 63 65 70 74 69 6f 6e 54  68 72 6f 77 73 01       >ceptionThrows   <
// 		ctor args: ()
// 
// 	CustomAttribute #3 (0c000003)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000003
// 		CustomAttributeName: System.Diagnostics.DebuggableAttribute :: instance void .ctor(value class DebuggingModes)
// 		Length: 8
// 		Value : 01 00 07 01 00 00 00 00                          >                <
// 		ctor args: ( <can not decode> )
// 
// 	CustomAttribute #4 (0c000004)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000004
// 		CustomAttributeName: System.Runtime.Versioning.TargetFrameworkAttribute :: instance void .ctor(class System.String)
// 		Length: 53
// 		Value : 01 00 18 2e 4e 45 54 43  6f 72 65 41 70 70 2c 56 >   .NETCoreApp,V<
//                       : 65 72 73 69 6f 6e 3d 76  36 2e 30 01 00 54 0e 14 >ersion=v6.0  T  <
//                       : 46 72 61 6d 65 77 6f 72  6b 44 69 73 70 6c 61 79 >FrameworkDisplay<
//                       : 4e 61 6d 65 00                                   >Name            <
// 		ctor args: (".NETCoreApp,Version=v6.0")
// 
// 	CustomAttribute #5 (0c000005)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000005
// 		CustomAttributeName: System.Reflection.AssemblyCompanyAttribute :: instance void .ctor(class System.String)
// 		Length: 19
// 		Value : 01 00 0e 53 69 6d 70 6c  65 44 65 6c 65 67 61 74 >   SimpleDelegat<
//                       : 65 00 00                                         >e               <
// 		ctor args: ("SimpleDelegate")
// 
// 	CustomAttribute #6 (0c000006)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000006
// 		CustomAttributeName: System.Reflection.AssemblyConfigurationAttribute :: instance void .ctor(class System.String)
// 		Length: 10
// 		Value : 01 00 05 44 65 62 75 67  00 00                   >   Debug        <
// 		ctor args: ("Debug")
// 
// 	CustomAttribute #7 (0c000007)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000007
// 		CustomAttributeName: System.Reflection.AssemblyFileVersionAttribute :: instance void .ctor(class System.String)
// 		Length: 12
// 		Value : 01 00 07 31 2e 30 2e 30  2e 30 00 00             >   1.0.0.0      <
// 		ctor args: ("1.0.0.0")
// 
// 	CustomAttribute #8 (0c000008)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000008
// 		CustomAttributeName: System.Reflection.AssemblyInformationalVersionAttribute :: instance void .ctor(class System.String)
// 		Length: 10
// 		Value : 01 00 05 31 2e 30 2e 30  00 00                   >   1.0.0        <
// 		ctor args: ("1.0.0")
// 
// 	CustomAttribute #9 (0c000009)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a000009
// 		CustomAttributeName: System.Reflection.AssemblyProductAttribute :: instance void .ctor(class System.String)
// 		Length: 19
// 		Value : 01 00 0e 53 69 6d 70 6c  65 44 65 6c 65 67 61 74 >   SimpleDelegat<
//                       : 65 00 00                                         >e               <
// 		ctor args: ("SimpleDelegate")
// 
// 	CustomAttribute #10 (0c00000a)
// 	-------------------------------------------------------
// 		CustomAttribute Type: 0a00000a
// 		CustomAttributeName: System.Reflection.AssemblyTitleAttribute :: instance void .ctor(class System.String)
// 		Length: 19
// 		Value : 01 00 0e 53 69 6d 70 6c  65 44 65 6c 65 67 61 74 >   SimpleDelegat<
//                       : 65 00 00                                         >e               <
// 		ctor args: ("SimpleDelegate")
// 
// 
// AssemblyRef #1 (23000001)
// -------------------------------------------------------
// 	Token: 0x23000001
// 	Public Key or Token: b0 3f 5f 7f 11 d5 0a 3a 
// 	Name: System.Runtime
// 	Version: 6.0.0.0
// 	Major Version: 0x00000006
// 	Minor Version: 0x00000000
// 	Build Number: 0x00000000
// 	Revision Number: 0x00000000
// 	Locale: <null>
// 	HashValue Blob:
// 	Flags: [none] (00000000)
// 
// 
// AssemblyRef #2 (23000002)
// -------------------------------------------------------
// 	Token: 0x23000002
// 	Public Key or Token: b0 3f 5f 7f 11 d5 0a 3a 
// 	Name: System.Console
// 	Version: 6.0.0.0
// 	Major Version: 0x00000006
// 	Minor Version: 0x00000000
// 	Build Number: 0x00000000
// 	Revision Number: 0x00000000
// 	Locale: <null>
// 	HashValue Blob:
// 	Flags: [none] (00000000)
// 
// 
// User Strings
// -------------------------------------------------------
// 70000001 : (36) L"***** Simple Delegate Example *****\n"
// 7000004b : (14) L"10 + 10 is {0}"
// 70000069 : (16) L"Method Name: {0}"
// 7000008b : (14) L"Type Name: {0}"
// 
// 
// Coff symbol name overhead:  0
// ===========================================================
// ===========================================================
// ================================= END OF METAINFO ================================================


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
.assembly SimpleDelegate
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
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0E 53 69 6D 70 6C 65 44 65 6C 65 67 61 74   // ...SimpleDelegat
                                                                                                      65 00 00 )                                        // e..
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 )                   // ...Debug..
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 )                   // ...1.0.0..
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 53 69 6D 70 6C 65 44 65 6C 65 67 61 74   // ...SimpleDelegat
                                                                                                      65 00 00 )                                        // e..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 53 69 6D 70 6C 65 44 65 6C 65 67 61 74   // ...SimpleDelegat
                                                                                                    65 00 00 )                                        // e..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module SimpleDelegate.dll
// MVID: {8B6A66A5-9952-48A7-BE4B-EED9EE654F06}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000001B09D7B0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private abstract auto ansi sealed beforefieldinit '<Program>$'
       extends [System.Runtime]System.Object
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private hidebysig static void  '<Main>$'(string[] args) cil managed
  {
    .entrypoint
    // Code size       71 (0x47)
    .maxstack  4
    .locals init (class SimpleDelegate.SimpleMath V_0,
             class BinaryOp V_1)
    IL_0000:  ldstr      "***** Simple Delegate Example *****\n"
    IL_0005:  call       void [System.Console]System.Console::WriteLine(string)
    IL_000a:  nop
    IL_000b:  newobj     instance void SimpleDelegate.SimpleMath::.ctor()
    IL_0010:  stloc.0
    IL_0011:  ldloc.0
    IL_0012:  ldftn      instance int32 SimpleDelegate.SimpleMath::Add(int32,
                                                                       int32)
    IL_0018:  newobj     instance void BinaryOp::.ctor(object,
                                                       native int)
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  call       void '<Program>$'::'<<Main>$>g__DisplayDelegateInfo|0_0'(class [System.Runtime]System.Delegate)
    IL_0024:  nop
    IL_0025:  ldstr      "10 + 10 is {0}"
    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.s   10
    IL_002d:  ldc.i4.s   10
    IL_002f:  callvirt   instance int32 BinaryOp::Invoke(int32,
                                                         int32)
    IL_0034:  box        [System.Runtime]System.Int32
    IL_0039:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_003e:  nop
    IL_003f:  call       string [System.Console]System.Console::ReadLine()
    IL_0044:  pop
    IL_0045:  nop
    IL_0046:  ret
  } // end of method '<Program>$'::'<Main>$'

  .method assembly hidebysig static void 
          '<<Main>$>g__DisplayDelegateInfo|0_0'(class [System.Runtime]System.Delegate delObj) cil managed
  {
    // Code size       64 (0x40)
    .maxstack  2
    .locals init (class [System.Runtime]System.Delegate[] V_0,
             int32 V_1,
             class [System.Runtime]System.Delegate V_2)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.0
    IL_0003:  callvirt   instance class [System.Runtime]System.Delegate[] [System.Runtime]System.Delegate::GetInvocationList()
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.1
    IL_000b:  br.s       IL_0039

    IL_000d:  ldloc.0
    IL_000e:  ldloc.1
    IL_000f:  ldelem.ref
    IL_0010:  stloc.2
    IL_0011:  nop
    IL_0012:  ldstr      "Method Name: {0}"
    IL_0017:  ldloc.2
    IL_0018:  callvirt   instance class [System.Runtime]System.Reflection.MethodInfo [System.Runtime]System.Delegate::get_Method()
    IL_001d:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0022:  nop
    IL_0023:  ldstr      "Type Name: {0}"
    IL_0028:  ldloc.2
    IL_0029:  callvirt   instance object [System.Runtime]System.Delegate::get_Target()
    IL_002e:  call       void [System.Console]System.Console::WriteLine(string,
                                                                        object)
    IL_0033:  nop
    IL_0034:  nop
    IL_0035:  ldloc.1
    IL_0036:  ldc.i4.1
    IL_0037:  add
    IL_0038:  stloc.1
    IL_0039:  ldloc.1
    IL_003a:  ldloc.0
    IL_003b:  ldlen
    IL_003c:  conv.i4
    IL_003d:  blt.s      IL_000d

    IL_003f:  ret
  } // end of method '<Program>$'::'<<Main>$>g__DisplayDelegateInfo|0_0'

} // end of class '<Program>$'

.class public auto ansi sealed BinaryOp
       extends [System.Runtime]System.MulticastDelegate
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(object 'object',
                               native int 'method') runtime managed
  {
  } // end of method BinaryOp::.ctor

  .method public hidebysig newslot virtual 
          instance int32  Invoke(int32 x,
                                 int32 y) runtime managed
  {
  } // end of method BinaryOp::Invoke

  .method public hidebysig newslot virtual 
          instance class [System.Runtime]System.IAsyncResult 
          BeginInvoke(int32 x,
                      int32 y,
                      class [System.Runtime]System.AsyncCallback callback,
                      object 'object') runtime managed
  {
  } // end of method BinaryOp::BeginInvoke

  .method public hidebysig newslot virtual 
          instance int32  EndInvoke(class [System.Runtime]System.IAsyncResult result) runtime managed
  {
  } // end of method BinaryOp::EndInvoke

} // end of class BinaryOp

.class public auto ansi beforefieldinit SimpleDelegate.SimpleMath
       extends [System.Runtime]System.Object
{
  .method public hidebysig instance int32 
          Add(int32 x,
              int32 y) cil managed
  {
    // Code size       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  add
    IL_0003:  ret
  } // end of method SimpleMath::Add

  .method public hidebysig instance int32 
          Subtract(int32 x,
                   int32 y) cil managed
  {
    // Code size       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.2
    IL_0002:  sub
    IL_0003:  ret
  } // end of method SimpleMath::Subtract

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method SimpleMath::.ctor

} // end of class SimpleDelegate.SimpleMath


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file SimpleDelegate.res
