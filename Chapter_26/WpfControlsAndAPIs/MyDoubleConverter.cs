using System.Windows.Data;

namespace WpfControlsAndAPIs;

public class MyDoubleConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter,
        System.Globalization.CultureInfo culture)
    {
        // Convert the double to an int.
        double v = (double)value;
        return (int)v;
    }

    public object ConvertBack(object value, Type targetType, object parameter,
        System.Globalization.CultureInfo culture)
    {
        // You won't worry about "two-way" bindings
        // here, so just return the value.
        return value;
    }
}
