using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;
using WpfNotifications.Models;

namespace WpfNotifications
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IList<Car> _cars = new ObservableCollection<Car>();

        public MainWindow()
        {
            InitializeComponent();
            _cars.Add(
                new Car { Id = 1, Color = "Blue", Make = "Chevy", PetName = "Kit", IsChanged = false });
            _cars.Add(
                new Car { Id = 2, Color = "Red", Make = "Ford", PetName = "Red Rider", IsChanged = false });
            cboCars.ItemsSource = _cars;
        }

        private void BtnChangeColor_OnClick(object sender, RoutedEventArgs e)
        {
            _cars.First(x => x.Id == ((Car)cboCars.SelectedItem)?.Id).Color = "Pink";
        }

        private void BtnAddCar_OnClick(object sender, RoutedEventArgs e)
        {
            var maxCount = _cars?.Max(x => x.Id) ?? 0;
            _cars?.Add(new Car { Id = ++maxCount, Color = "Yellow", Make = "VW", PetName = "Birdie" });

        }
    }
}
