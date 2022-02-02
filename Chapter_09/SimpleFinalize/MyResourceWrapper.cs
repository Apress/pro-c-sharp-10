namespace SimpleFinalize;
class MyResourceWrapper
{
    // Compile-time error!
    //protected override void Finalize(){ }

    // Clean up unmanaged resources here.
    // Beep when destroyed (testing purposes only!)
    ~MyResourceWrapper() => Console.Beep();
}
