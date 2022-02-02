using System;
using System.Windows.Input;
using WpfCommands.Models;

namespace WpfCommands.Cmds
{
    public class ChangeColorCommand : CommandBase
    {
        public override bool CanExecute(object parameter) => parameter is Car;
        public override void Execute(object parameter)
        {
            ((Car)parameter).Color = "Pink";
        }
    }
}
