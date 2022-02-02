using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BinaryResourceApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // A List of BitmapImage files.
        List<BitmapImage> _images = new List<BitmapImage>();

        // Current position in the list.
        private int _currImage = 0;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void MainWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            try
            {
                //string path = Environment.CurrentDirectory;
                // Load these images from disk when the window loads.
                //_images.Add(new BitmapImage(new Uri($@"{path}\Images\Deer.jpg")));
                //_images.Add(new BitmapImage(new Uri($@"{path}\Images\Dogs.jpg")));
                //_images.Add(new BitmapImage(new Uri($@"{path}\Images\Welcome.jpg")));

                // Extract from the assembly and then load images
                _images.Add(new BitmapImage(new Uri(@"/Images/Deer.jpg", UriKind.Relative)));
                _images.Add(new BitmapImage(new Uri(@"/Images/Dogs.jpg", UriKind.Relative)));
                _images.Add(new BitmapImage(new Uri(@"/Images/Welcome.jpg", UriKind.Relative)));

                // Show first image in the List.
                imageHolder.Source = _images[_currImage];
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnPreviousImage_Click(object sender, RoutedEventArgs e)
        {
            if (--_currImage < 0)
            {
                _currImage = _images.Count - 1;
            }
            imageHolder.Source = _images[_currImage];
        }

        private void btnNextImage_Click(object sender, RoutedEventArgs e)
        {
            if (++_currImage >= _images.Count)
            {
                _currImage = 0;
            }
            imageHolder.Source = _images[_currImage];
        }
    }
}
