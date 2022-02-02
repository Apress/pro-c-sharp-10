namespace MiInterfaceHierarchy;
interface IPrintable
{
    void Print();
    void Draw(); // <-- Note possible name clash here!
}
