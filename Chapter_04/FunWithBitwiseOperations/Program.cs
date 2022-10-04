using FunWithBitwiseOperations;

Console.WriteLine("===== Fun with Bitwise Operations =====");

Console.WriteLine("6 & 4 = {0} | {1}", 6 & 4, Convert.ToString(6 & 4,2));
Console.WriteLine("6 | 4 = {0} | {1}", 6 | 4, Convert.ToString(6 | 4,2));
Console.WriteLine("6 ^ 4 = {0} | {1}", 6 ^ 4, Convert.ToString(6 ^ 4,2));
Console.WriteLine("6 << 1  = {0} | {1}", 6 << 1, Convert.ToString(6 << 1,2));
Console.WriteLine("6 >> 1 = {0} | {1}", 6 >> 1, Convert.ToString(6 >> 1,2));

Console.WriteLine("~6 = {0} | {1}", ~6, Convert.ToString(~6,2));
Console.WriteLine("Int.MaxValue {0}", Convert.ToString(int.MaxValue,2));
Console.WriteLine();

ContactPreferenceEnum emailAndPhone = ContactPreferenceEnum.Email | ContactPreferenceEnum.Phone;

// Console.WriteLine("None {0} | {1}", ContactPreferenceEnum.None, Convert.ToString((int)ContactPreferenceEnum.None,2));
// Console.WriteLine("Email {0} | {1}", ContactPreferenceEnum.Email, Convert.ToString((int)ContactPreferenceEnum.Email,2));
// Console.WriteLine("Phone {0} | {1}", ContactPreferenceEnum.Phone, Convert.ToString((int)ContactPreferenceEnum.Phone,2));
// Console.WriteLine("Text {0} | {1}", ContactPreferenceEnum.Text, Convert.ToString((int)ContactPreferenceEnum.Text,2));

Console.WriteLine("emailAndPhone: {0} | {1}", emailAndPhone, Convert.ToString((int)emailAndPhone,2));
Console.WriteLine();
Console.WriteLine("None? {0}", (emailAndPhone | ContactPreferenceEnum.None) == emailAndPhone);
Console.WriteLine("Email? {0}", (emailAndPhone | ContactPreferenceEnum.Email) == emailAndPhone);
Console.WriteLine("Phone? {0}", (emailAndPhone | ContactPreferenceEnum.Phone) == emailAndPhone);
Console.WriteLine("Text? {0}", (emailAndPhone | ContactPreferenceEnum.Text) == emailAndPhone);

Console.ReadLine();




