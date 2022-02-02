using System;
using System.Reflection;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Xml;

namespace TreesAndTemplatesApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private string _dataToShow = string.Empty;

        private void btnShowLogicalTree_Click(object sender, RoutedEventArgs e)
        {
            _dataToShow = "";
            BuildLogicalTree(0, this);
            txtDisplayArea.Text = _dataToShow;
        }

        void BuildLogicalTree(int depth, object obj)
        {
            // Add the type name to the dataToShow member variable.
            _dataToShow += new string(' ', depth) + obj.GetType().Name + "\n";

            // If an item is not a DependencyObject, skip it.
            if (!(obj is DependencyObject))
                return;

            // Make a recursive call for each logical child.
            foreach (var child in LogicalTreeHelper.GetChildren(
                (DependencyObject)obj))
            {
                BuildLogicalTree(depth + 5, child);
            }
        }

        private void btnShowVisualTree_Click(object sender, RoutedEventArgs e)
        {
            _dataToShow = "";
            BuildVisualTree(0, this);
            txtDisplayArea.Text = _dataToShow;
        }
        void BuildVisualTree(int depth, DependencyObject obj)
        {
            // Add the type name to the dataToShow member variable.
            _dataToShow += new string(' ', depth) + obj.GetType().Name + "\n";
            // Make a recursive call for each visual child.
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(obj); i++)
            {
                BuildVisualTree(depth + 1, VisualTreeHelper.GetChild(obj, i));
            }
        }
        private Control _ctrlToExamine = null;
        private void btnTemplate_Click(object sender, RoutedEventArgs e)
        {
            _dataToShow = "";
            ShowTemplate();
            txtDisplayArea.Text = _dataToShow;
        }
        private void ShowTemplate()
        {
            // Remove the control that is currently in the preview area.
            if (_ctrlToExamine != null)
                stackTemplatePanel.Children.Remove(_ctrlToExamine);
            try
            {
                // Load PresentationFramework, and create an instance of the
                // specified control. Give it a size for display purposes, then add to the
                // empty StackPanel.
                Assembly asm = Assembly.Load("PresentationFramework, Version=4.0.0.0," +
                                             "Culture=neutral, PublicKeyToken=31bf3856ad364e35");
                _ctrlToExamine = (Control)asm.CreateInstance(txtFullName.Text);
                _ctrlToExamine.Height = 200;
                _ctrlToExamine.Width = 200;
                _ctrlToExamine.Margin = new Thickness(5);
                stackTemplatePanel.Children.Add(_ctrlToExamine);

                // Define some XML settings to preserve indentation.
                var xmlSettings = new XmlWriterSettings { Indent = true };

                // Create a StringBuilder to hold the XAML.
                var strBuilder = new StringBuilder();

                // Create an XmlWriter based on our settings.
                var xWriter = XmlWriter.Create(strBuilder, xmlSettings);

                // Now save the XAML into the XmlWriter object based on the ControlTemplate.
                XamlWriter.Save(_ctrlToExamine.Template, xWriter);

                // Display XAML in the text box.
                _dataToShow = strBuilder.ToString();
            }
            catch (Exception ex)
            {
                _dataToShow = ex.Message;
            }
        }

    }
}
