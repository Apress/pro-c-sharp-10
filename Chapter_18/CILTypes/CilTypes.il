// List of referenced assemblies.
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 6:0:0:0
}
.assembly extern System.Runtime.Extensions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 6:0:0:0
}
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89)
  .ver 6:0:0:0
}

// Our assembly
.assembly CILTypes
{
  .ver 1:0:0:0
}
// The module of our single-file assembly.
.module CILTypes.dll

// Our assembly has a single namespace.
.namespace MyNamespace
{
	// An interface definition.
    .class public interface IMyInterface {}
    
	.class public MyBaseClass 
	{
		// Some field data.
		.field private string stringField 
		.field private int32 intField	
		
		// A custom constructor.
		.method public hidebysig specialname rtspecialname 
			instance void .ctor(string s, int32 i) cil managed
		{
			// TODO: Add implementation code...		
		}

		// Property syntax.
		.method public hidebysig specialname 
		instance string get_TheString() cil managed
		{
			// TODO: Add implementation code...
		}  

		.method public hidebysig specialname 
		instance void set_TheString(string 'value') cil managed
		{
			// TODO: Add implementation code...
		}  

		.property instance string TheString()
		{
		.get instance string 
		  MyNamespace.MyBaseClass::get_TheString()
		.set instance void 
		  MyNamespace. MyBaseClass::set_TheString(string)
		}

		.method public hidebysig static void MyMethod(int32 inputInt, int32& refInt,
             class [System.Runtime.Extensions]System.Collections.ArrayList ar,
             [out] int32& outputInt) cil managed
        {
        }
        .method public hidebysig instance void Speak() cil managed
		{
			// During the scope of this method, exactly
			// 1 value (the string literal) is on the stack.
			.maxstack 1
			ldstr "Hello there..."
			call void [mscorlib]System.Console::WriteLine(string)
			ret
		}

		.method public hidebysig static void MyLocalVariables() cil managed
		{
			.maxstack 8
			// Define three local variables.
			.locals init (string myStr, int32 myInt, object myObj)
			// Load a string onto the virtual execution stack.
			ldstr "CIL code is fun!"
			// Pop off current value and store in local variable [0].
			stloc.0

			// Load a constant of type "i4"
			// (shorthand for int32) set to the value 33.
			ldc.i4.s 33
			// Pop off current value and store in local variable [1].
			stloc.1

			// Create a new object and place on stack.
			newobj instance void [mscorlib]System.Object::.ctor()
			// Pop off current value and store in local variable [2].
			stloc.2
			ret
		}
		.method public hidebysig static int32 Add(int32 a, int32 b) cil managed
		{
			.maxstack 2
			ldarg.0 // Load "a" onto the stack.
			ldarg.1 // Load "b" onto the stack.
			add     // Add both values.
			ret
		}
		.method public hidebysig static void CountToTen() cil managed
		{
			.maxstack 2
			.locals init (int32 V_0)
			IL_0000: ldc.i4.0     // Load this value onto the stack.
			IL_0001: stloc.0      // Store this value at index "0".
			IL_0002: br.s IL_0007 // Jump to IL_0007.
			IL_0003: ldloc.0      // Load value of variable at index 0.
			IL_0004: ldc.i4.1     // Load the value "1" on the stack.
			IL_0005: add   // Add current value on the stack at index 0.
			IL_0006: stloc.0
			IL_0007: ldloc.0      // Load value at index "0".
			IL_0008: ldc.i4.s 10  // Load value of "10" onto the stack.
			IL_0009: clt          // check less than value on the stack
			IL_000a: stloc.1      // Store result at index "1"
			IL_000b: ldloc.1      // Load value at index "1"
			IL_000c: brtrue.s IL_0002 // if true jump back to IL_0002
			IL_000d: ret
		}


	}     

    // MyDerivedClass now implements IAmAnInterface.
	.class public MyDerivedClass 
		extends MyNamespace.MyBaseClass
        implements MyNamespace.IMyInterface {}    
          
	// Shorthand notation for declaring a structure.
	.class public sealed value MyStruct{} 

	// Enum shorthand.
	.class public sealed enum MyEnum
	{
		.field public static literal valuetype 
		MyNamespace.MyEnum A = int32(0)
		.field public static literal valuetype 
		MyNamespace.MyEnum B = int32(1)
		.field public static literal valuetype 
		MyNamespace.MyEnum C = int32(2)	
	}     

	// A custom generic class with 1 type parameter. 
	.class public MyGenericClass`1<T>{}    
}


