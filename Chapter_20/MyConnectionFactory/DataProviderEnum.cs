namespace MyConnectionFactory;
//OleDb is Windows only and is not supported in .NET Core
enum DataProviderEnum
{
    SqlServer,
#if PC
    OleDb,
#endif
    Odbc,
    None
}
