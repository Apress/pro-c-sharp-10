using System.Windows;
using System.Windows.Controls;

namespace CustomDependencyProperty;

/// <summary>
/// Interaction logic for ShowNumberControl.xaml
/// </summary>
public partial class ShowNumberControl : UserControl
{
    public ShowNumberControl()
    {
        InitializeComponent();
    }
    // A normal, everyday .NET property.
    //private int _currNumber = 0;
    //public int CurrentNumber
    //{
    //    get => _currNumber;
    //    set
    //    {
    //        _currNumber = value;
    //        numberDisplay.Content = CurrentNumber.ToString();
    //    }
    //}
    public int CurrentNumber
    {
        get => (int)GetValue(CurrentNumberProperty);
        set => SetValue(CurrentNumberProperty, value);
    }

    public static readonly DependencyProperty CurrentNumberProperty =
        DependencyProperty.Register("CurrentNumber", typeof(int), typeof(ShowNumberControl),
            new UIPropertyMetadata(100, new PropertyChangedCallback(CurrentNumberChanged)),
            new ValidateValueCallback(ValidateCurrentNumber));

    // Just a simple business rule. Value must be between 0 and 500.
    public static bool ValidateCurrentNumber(object value)
        => Convert.ToInt32(value) >= 0 && Convert.ToInt32(value) <= 500;

    private static void CurrentNumberChanged(DependencyObject depObj,
        DependencyPropertyChangedEventArgs args)
    {
        // Cast the DependencyObject into ShowNumberControl.
        ShowNumberControl c = (ShowNumberControl)depObj;
        // Get the Label control in the ShowNumberControl.
        Label theLabel = c.numberDisplay;
        // Set the Label with the new value.
        theLabel.Content = args.NewValue.ToString();
    }

}
