using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Windows.Input;
using WpfViewModel.Cmds;
using WpfViewModel.Models;

namespace WpfViewModel.ViewModels
{
    public class MainWindowViewModel
    {
        public IList<Car> Cars { get; } = new ObservableCollection<Car>();

        public MainWindowViewModel()
        {
            Cars.Add(
                new Car { Id = 1, Color = "Blue", Make = "Chevy", PetName = "Kit", IsChanged = false });
            Cars.Add(
                new Car { Id = 2, Color = "Red", Make = "Ford", PetName = "Red Rider", IsChanged = false });
        }
        private ICommand _changeColorCommand = null;
        public ICommand ChangeColorCmd => _changeColorCommand ??= new ChangeColorCommand();

        private ICommand _addCarCommand = null;
        public ICommand AddCarCmd => _addCarCommand ??= new AddCarCommand();


        private RelayCommand<Car> _deleteCarCommand = null;
        public RelayCommand<Car> DeleteCarCmd
            => _deleteCarCommand ??= new RelayCommand<Car>(DeleteCar, CanDeleteCar);
        private bool CanDeleteCar(Car car) => car != null;
        private void DeleteCar(Car car)
        {
            Cars.Remove(car);
        }

    }
}
