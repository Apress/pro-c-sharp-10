namespace FunWithBitwiseOperations
{
    [Flags]
    public enum ContactPreferenceEnum
    {
        None = 1,
        Email = 2,
        Phone = 4,
        Text = 8
    }
}