using System.Windows;

namespace WpfTesterApp
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private void App_OnStartup(object sender, StartupEventArgs e)
        {
            Application.Current.Properties["GodMode"] = false;
            // Check the incoming command-line arguments and see if they
            // specified a flag for /GODMODE.
            foreach (string arg in e.Args)
            {
                if (arg.Equals("/godmode", StringComparison.OrdinalIgnoreCase))
                {
                    Application.Current.Properties["GodMode"] = true;
                    break;
                }
            }
        }

        private void App_OnExit(object sender, ExitEventArgs e)
        {
        }
    }
}
