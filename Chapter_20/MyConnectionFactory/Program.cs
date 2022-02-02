using System.Data;
using System.Data.Odbc;
#if PC
  using System.Data.OleDb;
#endif
using Microsoft.Data.SqlClient;
using MyConnectionFactory;

Console.WriteLine("**** Very Simple Connection Factory *****\n");
Setup(DataProviderEnum.SqlServer);
#if PC
    Setup(DataProviderEnum.OleDb); //Not supported on MacOS
#endif
Setup(DataProviderEnum.Odbc);
Setup(DataProviderEnum.None);
Console.ReadLine();

void Setup(DataProviderEnum provider)
{
    // Get a specific connection.
    IDbConnection myConnection = GetConnection(provider);
    Console.WriteLine($"Your connection is a {myConnection?.GetType().Name ?? "unrecognized type"}");
    // Open, use and close connection...
}

// This method returns a specific connection object
// based on the value of a DataProvider enum.
IDbConnection GetConnection(DataProviderEnum dataProvider) =>
    dataProvider switch
    {
        DataProviderEnum.SqlServer => new SqlConnection(),
#if PC
        //Not support on non Windows OS 
        DataProviderEnum.OleDb => new OleDbConnection(),
#endif
        DataProviderEnum.Odbc => new OdbcConnection(),
        _ => null,
    };
