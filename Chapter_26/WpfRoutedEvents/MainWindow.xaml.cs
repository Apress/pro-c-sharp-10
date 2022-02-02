using System.Windows;
using System.Windows.Input;

namespace WpfRoutedEvents
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string _mouseActivity = string.Empty;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void BtnClickMe_Clicked(object sender, RoutedEventArgs e)
        {
            AddEventInfo(sender, e);
            MessageBox.Show(_mouseActivity, "Your Event Info");
            // Clear string for next round.
            _mouseActivity = "";
            // Do something when button is clicked.
            //MessageBox.Show("Clicked the button");
        }
        private void AddEventInfo(object sender, RoutedEventArgs e)
        {
            _mouseActivity += string.Format(
                "{0} sent a {1} event named {2}.\n", sender,
                e.RoutedEvent.RoutingStrategy,
                e.RoutedEvent.Name);
        }

        private void outerEllipse_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Change title of window.
            //this.Title = "You clicked the outer ellipse!";
            // Stop bubbling!
            //e.Handled = true;
            AddEventInfo(sender, e);
        }

        private void outerEllipse_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            AddEventInfo(sender, e);
        }
    }
}
