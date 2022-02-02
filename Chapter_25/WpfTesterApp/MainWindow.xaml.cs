using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace WpfTesterApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.Closed += MainWindow_Closed;
            this.Closing += MainWindow_Closing;
            this.MouseMove += MainWindow_MouseMove;
            this.KeyDown += MainWindow_KeyDown;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("You clicked the button!");
            if ((bool)Application.Current.Properties["GodMode"])
            {
                MessageBox.Show("Cheater!");
            }
        }
        private void MainWindow_KeyDown(object sender, KeyEventArgs e)
        {
            ClickMe.Content = e.Key.ToString();
        }
        private void MainWindow_MouseMove(object sender, MouseEventArgs e)
        {
            this.Title = e.GetPosition(this).ToString();
        }
        private void MainWindow_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            string msg = "Do you want to close without saving?";
            MessageBoxResult result = MessageBox.Show(msg,
                "My App", MessageBoxButton.YesNo, MessageBoxImage.Warning);
            if (result == MessageBoxResult.No)
            {
                e.Cancel = true;
            }
        }
        private void MainWindow_Closed(object sender, EventArgs eventArgs)
        {
            MessageBox.Show("See ya!");
        }
        private void MyCalendar_OnSelectedDatesChanged(object sender, SelectionChangedEventArgs e)
        {
        }
    }
}
