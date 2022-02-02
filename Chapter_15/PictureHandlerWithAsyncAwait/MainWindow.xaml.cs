using System.IO;
using System.Windows;
using System.Drawing;

namespace PictureHandlerWithAsyncAwait;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private CancellationTokenSource _cancelToken = null;

    public MainWindow()
    {
        InitializeComponent();
    }
    private void cmdCancel_Click(object sender, EventArgs e)
    {
        // This will be used to tell all the worker threads to stop!
        _cancelToken.Cancel();
    }

    private async void cmdProcess_Click(object sender, EventArgs e)
    {
        _cancelToken = new CancellationTokenSource();
        var basePath = Directory.GetCurrentDirectory();
        var pictureDirectory = Path.Combine(basePath, "TestPictures");
        var outputDirectory = Path.Combine(basePath, "ModifiedPictures");
        //Clear out any existing files
        if (Directory.Exists(outputDirectory))
        {
            Directory.Delete(outputDirectory, true);
        }
        Directory.CreateDirectory(outputDirectory);
        string[] files = Directory.GetFiles(pictureDirectory, "*.jpg", SearchOption.AllDirectories);
        try
        {
            foreach (string file in files)
            {
                try
                {
                    await ProcessFileAsync(file, outputDirectory, _cancelToken.Token);
                }
                catch (OperationCanceledException ex)
                {
                    Console.WriteLine(ex);
                    throw;
                }
            }
        }
        catch (OperationCanceledException ex)
        {
            Console.WriteLine(ex);
            throw;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
            throw;
        }
        _cancelToken = null;
        this.Title = "Processing complete";
    }

    private async Task ProcessFileAsync(string currentFile, string outputDirectory, CancellationToken token)
    {
        string filename = Path.GetFileName(currentFile);
        using (Bitmap bitmap = new Bitmap(currentFile))
        {
            try
            {
                await Task.Run(() =>
                    {
                        Dispatcher?.Invoke(() =>
                            {
                                this.Title =
                                    $"Processing {filename}";
                            }
                        );
                        bitmap.RotateFlip(RotateFlipType.Rotate180FlipNone);
                        bitmap.Save(Path.Combine(outputDirectory, filename));
                    }
                    , token);
            }
            catch (OperationCanceledException ex)
            {
                Console.WriteLine(ex);
                throw;
            }
        }
    }
}