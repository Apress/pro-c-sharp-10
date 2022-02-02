using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Ink;
using System.Windows.Media;
using AutoLot.Dal.EfStructures;
using AutoLot.Dal.Repos;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace WpfControlsAndAPIs;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private IConfiguration _configuration;
    private ApplicationDbContext _context;
    public MainWindow()
    {
        InitializeComponent();
        //// Be in Ink mode by default.
        this.MyInkCanvas.EditingMode = InkCanvasEditingMode.Ink;
        this.inkRadio.IsChecked = true;
        this.comboColors.SelectedIndex = 0;
        SetBindings();
        GetConfigurationAndDbContext();
        ConfigureGrid();
    }

    private void GetConfigurationAndDbContext()
    {
        _configuration = new ConfigurationBuilder()
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", true, true)
            .Build();
        var optionsBuilder = new DbContextOptionsBuilder<ApplicationDbContext>();
        var connectionString = _configuration.GetConnectionString("AutoLot");
        optionsBuilder.UseSqlServer(connectionString, sqlOptions => sqlOptions.EnableRetryOnFailure());
        _context = new ApplicationDbContext(optionsBuilder.Options);

    }

    private void ConfigureGrid()
    {
        using var repo = new CarRepo(_context);
        // Build a LINQ query that gets back some data from the Inventory table.
        gridInventory.ItemsSource = repo.GetAllIgnoreQueryFilters().ToList()
            .Select(x => new { x.Id, Make = x.MakeName, x.Color, x.PetName });
    }

    private void SetBindings()
    {
        // Create a Binding object.
        Binding b = new Binding
        {
            // Register the converter, source, and path.
            Converter = new MyDoubleConverter(),
            Source = this.mySB,
            Path = new PropertyPath("Value")
        };

        // Call the SetBinding method on the Label.
        this.labelSBThumb.SetBinding(Label.ContentProperty, b);
    }

    private void RadioButtonClicked(object sender, RoutedEventArgs e)
    {
        // Based on which button sent the event, place the InkCanvas in a unique
        // mode of operation.
        this.MyInkCanvas.EditingMode = (sender as RadioButton)?.Content.ToString() switch
        {
            // These strings must be the same as the Content values for each
            // RadioButton.
            "Ink Mode!" => InkCanvasEditingMode.Ink,
            "Erase Mode!" => InkCanvasEditingMode.EraseByStroke,
            "Select Mode!" => InkCanvasEditingMode.Select,
            _ => this.MyInkCanvas.EditingMode
        };
    }

    private void ColorChanged(object sender, SelectionChangedEventArgs e)
    {
        // Get the selected value in the combo box.
        //string colorToUse =
        //    (this.comboColors.SelectedItem as ComboBoxItem)?.Content.ToString();

        string colorToUse =
            (comboColors.SelectedItem as StackPanel)?.Tag.ToString();

        // Change the color used to render the strokes.
        this.MyInkCanvas.DefaultDrawingAttributes.Color =
            (Color)ColorConverter.ConvertFromString(colorToUse);
    }

    private void SaveData(object sender, RoutedEventArgs e)
    {
        // Save all data on the InkCanvas to a local file.
        using FileStream fs = new FileStream("StrokeData.bin", FileMode.Create);
        this.MyInkCanvas.Strokes.Save(fs);
        fs.Close();
        MessageBox.Show("Image Saved", "Saved");
    }

    private void LoadData(object sender, RoutedEventArgs e)
    {
        // Fill StrokeCollection from file.
        using FileStream fs = new FileStream("StrokeData.bin", FileMode.Open, FileAccess.Read);
        StrokeCollection strokes = new StrokeCollection(fs);
        this.MyInkCanvas.Strokes = strokes;
    }

    private void Clear(object sender, RoutedEventArgs e)
    {
        // Clear all strokes.
        this.MyInkCanvas.Strokes.Clear();
    }
}
