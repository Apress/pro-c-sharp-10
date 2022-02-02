using System.Reflection;
using System.Reflection.Emit;

Console.WriteLine("***** The Amazing Dynamic Assembly Builder App *****");
// Create the dynamic assembly builder using our helper f(x).
AssemblyBuilder builder = CreateMyAsm();

// Get the HelloWorld type.
Type hello = builder.GetType("MyAssembly.HelloWorld");

// Create HelloWorld object and call the correct ctor.
Console.Write("-> Enter message to pass HelloWorld class: ");
string msg = Console.ReadLine();
object[] ctorArgs = new object[1];
ctorArgs[0] = msg;
object obj = Activator.CreateInstance(hello, ctorArgs);

// Call SayHello and show returned string.
Console.WriteLine("-> Calling SayHello() via late binding.");
MethodInfo mi = hello.GetMethod("SayHello");
mi.Invoke(obj, null);

// Invoke method.
mi = hello.GetMethod("GetMsg");
Console.WriteLine(mi.Invoke(obj, null));

static AssemblyBuilder CreateMyAsm()
{
    // Establish general assembly characteristics.
    AssemblyName assemblyName = new AssemblyName
    {
        Name = "MyAssembly",
        Version = new Version("1.0.0.0")
    };

    // Create new assembly.
    var builder = AssemblyBuilder
        .DefineDynamicAssembly(assemblyName, AssemblyBuilderAccess.Run);

    // Define the name of the module.
    ModuleBuilder module = builder.DefineDynamicModule("MyAssembly");

    // Define a public class named "HelloWorld".
    TypeBuilder helloWorldClass = module.DefineType("MyAssembly.HelloWorld",
        TypeAttributes.Public);

    // Define a private String member variable named "theMessage".
    FieldBuilder msgField =
        helloWorldClass.DefineField("theMessage", Type.GetType("System.String"),
            attributes: FieldAttributes.Private);

    // Create the custom ctor.
    Type[] constructorArgs = new Type[1];
    constructorArgs[0] = typeof(string);
    ConstructorBuilder constructor =
        helloWorldClass.DefineConstructor(MethodAttributes.Public,
            CallingConventions.Standard,
            constructorArgs);
    ILGenerator constructorIl = constructor.GetILGenerator();
    constructorIl.Emit(OpCodes.Ldarg_0);
    Type objectClass = typeof(object);
    ConstructorInfo superConstructor =
        objectClass.GetConstructor(new Type[0]);
    constructorIl.Emit(OpCodes.Call, superConstructor);
    constructorIl.Emit(OpCodes.Ldarg_0);
    constructorIl.Emit(OpCodes.Ldarg_1);
    constructorIl.Emit(OpCodes.Stfld, msgField);
    constructorIl.Emit(OpCodes.Ret);

    // Create the default ctor.
    helloWorldClass.DefineDefaultConstructor(MethodAttributes.Public);
    // Now create the GetMsg() method.
    MethodBuilder getMsgMethod =
        helloWorldClass.DefineMethod("GetMsg", MethodAttributes.Public,
            typeof(string), null);
    ILGenerator methodIl = getMsgMethod.GetILGenerator();
    methodIl.Emit(OpCodes.Ldarg_0);
    methodIl.Emit(OpCodes.Ldfld, msgField);
    methodIl.Emit(OpCodes.Ret);

    // Create the SayHello method.
    MethodBuilder sayHiMethod =
        helloWorldClass.DefineMethod("SayHello",
            MethodAttributes.Public, null, null);
    methodIl = sayHiMethod.GetILGenerator();
    methodIl.EmitWriteLine("Hello from the HelloWorld class!");
    methodIl.Emit(OpCodes.Ret);

    // "Bake" the class HelloWorld.
    // (Baking is the formal term for emitting the type.)
    helloWorldClass.CreateType();

    return builder;
}
