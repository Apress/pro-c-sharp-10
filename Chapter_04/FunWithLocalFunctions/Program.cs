Console.WriteLine("***** Fun with Local Functions *****\n");

// Calls original version of Add()
Console.WriteLine(Add(10, 10));

// Calls updated version of Add()
Console.WriteLine(AddWrapper(10, 10));

// Uh-oh! Bad side effect
Console.WriteLine(AddWrapperWithSideEffect(10, 10));

// Now it's all better :-)
Console.WriteLine(AddWrapperWithStatic(10, 10));

Console.ReadLine();
static int Add(int x, int y)
{
    //Do some validation here
    return x + y;
}

static int AddWrapper(int x, int y)
{
    //Do some validation here
    return Add();

    int Add()
    {
        return x + y;
    }
}
static int AddWrapperWithSideEffect(int x, int y)
{
    //Do some validation here
    return Add();

    int Add()
    {
        x += 1;
        return x + y;
    }
}
static int AddWrapperWithStatic(int x, int y)
{
    //Do some validation here
    return Add(x, y);

    static int Add(int x, int y)
    {
        return x + y;
    }
}
