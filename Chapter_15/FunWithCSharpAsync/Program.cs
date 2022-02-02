using Microsoft.VisualStudio.Threading;

Console.WriteLine(" Fun With Async ===>");
//Console.WriteLine(DoWork());
//string message = await DoWorkAsync();
//Console.WriteLine($"0 - {message}");
//string message1 = await DoWorkAsync().ConfigureAwait(false);
//Console.WriteLine($"1 - {message1}");

//try
//{
//    MethodReturningVoidAsync();
//}
//catch (Exception e)
//{
//    Console.WriteLine(e);
//}

//try
//{
//    await MethodReturningVoidTaskAsync()
//}
//catch (Exception ex)
//{
//    Console.WriteLine(ex);
//}


// //await MultipleAwaitsAsync();
await MultipleAwaitsAsync();
await MultipleAwaitsTake2Async();

//Call from sync method:
//Don't use any of these methods
//_ = DoWorkAsync().Result;
//_ = DoWorkAsync().GetAwaiter().GetResult();
//MethodReturningVoidTaskAsync().Wait();
//MethodReturningVoidTaskAsync().GetAwaiter().GetResult();
//end of Don't use any of these methods

//JoinableTaskFactory joinableTaskFactory = new JoinableTaskFactory(new JoinableTaskContext());
//string message2 =  joinableTaskFactory.Run(async () => await DoWorkAsync());
//Console.WriteLine($"2 - {message2}");

//joinableTaskFactory.Run(async () =>
//{
//    await MethodReturningVoidTaskAsync();
//});



// Console.WriteLine(await ReturnAnInt());
// await MethodWithProblems(7, -5);
// await MethodWithProblemsFixed(7, -5);
// await foreach (var number in GenerateSequence())
// {
//     Console.WriteLine(number);
// }

CancellationTokenSource tokenSource = new CancellationTokenSource();
_ = await DoWorkAsync().WaitAsync(TimeSpan.FromSeconds(10));
_ = await DoWorkAsync().WaitAsync(tokenSource.Token);
_ = await DoWorkAsync().WaitAsync(TimeSpan.FromSeconds(10), tokenSource.Token);

JoinableTaskFactory joinableTaskFactory2 = new JoinableTaskFactory(new JoinableTaskContext());
CancellationTokenSource tokenSource2 = new CancellationTokenSource();
joinableTaskFactory2.Run(async () =>
{
    await MethodReturningVoidTaskAsync().WaitAsync(tokenSource.Token);
    await MethodReturningVoidTaskAsync().WaitAsync(TimeSpan.FromSeconds(10),tokenSource.Token);

});


//string message2 =  joinableTaskFactory.Run(async () => await DoWorkAsync());
//Console.WriteLine($"2 - {message2}");


Console.WriteLine("Completed");
Console.ReadLine();

static string DoWork()
{
    Thread.Sleep(5_000);
    return "Done with work!";
}

static async Task<string> DoWorkAsync()
{
    return await Task.Run(() =>
    {
        Thread.Sleep(5_000);
        return "Done with work!";
    });
}

static async void MethodReturningVoidAsync()
{
    await Task.Run(() =>
    {
        /* Do some work here... */
        Thread.Sleep(4_000);
            throw new Exception("Something bad happened");
    });
    Console.WriteLine("Fire and forget void method completed");
}


static async Task MethodReturningVoidTaskAsync()
{
    await Task.Run(() =>
    {
        /* Do some work here... */
        Thread.Sleep(4_000);
       // throw new Exception("Something bad happened");
    });
    Console.WriteLine("Void method completed");
}

static async Task MultipleAwaitsAsync()
{
    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with first task!");

    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with second task!");

    //await Task.Run(() => { Thread.Sleep(2_000); });
    //Console.WriteLine("Done with third task!");

    //await Task.WhenAll(Task.Run(() =>
    //{
    //    Thread.Sleep(2_000);
    //    Console.WriteLine("Done with first task!");
    //}), Task.Run(() =>
    //{
    //    Thread.Sleep(1_000);
    //    Console.WriteLine("Done with second task!");
    //}), Task.Run(() =>
    //{
    //    Thread.Sleep(1_000);
    //    Console.WriteLine("Done with third task!");
    //}));
    await Task.WhenAny(Task.Run(() =>
    {
        Thread.Sleep(2_000);
        Console.WriteLine("Done with first task!");
    }), Task.Run(() =>
    {
        Thread.Sleep(1_000);
        Console.WriteLine("Done with second task!");
    }), Task.Run(() =>
    {
        Thread.Sleep(1_000);
        Console.WriteLine("Done with third task!");
    }));
}

static async Task MultipleAwaitsTake2Async()
{
    var tasks = new List<Task>
    {
        Task.Run(() =>
        {
            Thread.Sleep(2_000);
            Console.WriteLine("Done with first task!");
        }),
        Task.Run(() =>
        {
            Thread.Sleep(1_000);
            Console.WriteLine("Done with second task!");
        }),
        Task.Run(() =>
        {
            Thread.Sleep(1_000);
            Console.WriteLine("Done with third task!");
        })
    };

    //await Task.WhenAll(tasks);
    await Task.WhenAny(tasks);
}

static async Task<string> MethodWithTryCatch()
{
    try
    {
        //Do some work
        return "Hello";
    }
    catch (Exception ex)
    {
        await LogTheErrors();
        throw;
    }
    finally
    {
        await DoMagicCleanUp();
    }
}

static Task DoMagicCleanUp()
{
    throw new NotImplementedException();
}

static Task LogTheErrors()
{
    throw new NotImplementedException();
}

static async ValueTask<int> ReturnAnInt()
{
    await Task.Delay(1_000);
    return 5;
}

static async Task MethodWithProblems(int firstParam, int secondParam)
{
    Console.WriteLine("Enter");
    await Task.Run(() =>
    {
        //Call long running method
        Thread.Sleep(4_000);
        Console.WriteLine("First Complete");
        //Call another long running method that fails because
        //the second parameter is out of range
        Console.WriteLine("Something bad happened");
    });
}

static async Task MethodWithProblemsFixed(int firstParam, int secondParam)
{
    Console.WriteLine("Enter");
    if (secondParam < 0)
    {
        Console.WriteLine("Bad data");
        return;
    }

    await actualImplementation();

    async Task actualImplementation()
    {
        await Task.Run(() =>
        {
            //Call long running method
            Thread.Sleep(4_000);
            Console.WriteLine("First Complete");
            //Call another long running method that fails because
            //the second parameter is out of range
            Console.WriteLine("Something bad happened");
        });
    }
}

static async IAsyncEnumerable<int> GenerateSequence()
{
    for (int i = 0; i < 20; i++)
    {
        await Task.Delay(100);
        yield return i;
    }
}