using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Runtime.CompilerServices;

namespace WpfCommands.Models
{

    public partial class Car : INotifyPropertyChanged
    {
        private string _make;
        private int _id;
        private string _color;
        private string _petName;
        private bool _isChanged;

        [Required]
        public int Id
        {
            get => _id;
            set
            {
                if (value == _id) return;
                _id = value;
                OnPropertyChanged();
            }
        }

        [Required]
        [StringLength(50)]
        public string Make
        {
            get => _make;
            set
            {
                if (value == _make) return;
                _make = value;
                OnPropertyChanged();
            }
        }

        [Required]
        [StringLength(50)]
        public string Color
        {
            get => _color;
            set
            {
                if (value == _color) return;
                _color = value;
                OnPropertyChanged();
            }
        }

        [Required]
        [StringLength(50)]
        public string PetName
        {
            get => _petName;
            set
            {
                if (value == _petName) return;
                _petName = value;
                OnPropertyChanged();
            }
        }

        public bool IsChanged
        {
            get => _isChanged;
            set
            {
                if (value == _isChanged) return;
                _isChanged = value;
                OnPropertyChanged();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            if (propertyName != nameof(IsChanged))
            {
                IsChanged = true;
            }
            //PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(string.Empty));
        }
    }
}