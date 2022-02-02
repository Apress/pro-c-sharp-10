using System.Drawing;
using System.Windows;
using System.IO;

namespace DataParallelismWithForEach
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // New Window-level variable.
        private CancellationTokenSource _cancelToken = new CancellationTokenSource();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void cmdCancel_Click(object sender, EventArgs e)
        {
            // This will be used to tell all the worker threads to stop!
            _cancelToken.Cancel();
        }

        private void cmdProcess_Click(object sender, EventArgs e)
        {
            this.Title = $"Starting...";

            //ProcessFiles();
            // Start a new "task" to process the files.
            //var t = Task.Factory.StartNew(() => ProcessFiles());
            ProcessFilesAsync().Wait();
            //Can also be written this way
            //Task.Factory.StartNew(ProcessFiles);
            //this.Title = "Processing complete";
        }

        private void ProcessFiles()
        {
            // Load up all *.jpg files, and make a new folder for the modified data.
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

            // Process the image data in a blocking manner.
            //foreach (string currentFile in files)
            //{
            //    string filename = Path.GetFileName(currentFile);

            //    // Print out the ID of the thread processing the current image.
            //    this.Title = $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
            //    using (Bitmap bitmap = new Bitmap(currentFile))
            //    {
            //        bitmap.RotateFlip(RotateFlipType.Rotate180FlipNone);
            //        bitmap.Save(Path.Combine(outputDirectory, filename));

            //    }
            //}
            //try
            //{
            //    // Process the image data in a parallel manner!
            //    Parallel.ForEach(files, currentFile =>
            //        {
            //            string filename = Path.GetFileName(currentFile);

            //            // Eek! This will not work anymore!
            //            //this.Title = $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
            //            // Invoke on the Form object, to allow secondary threads to access controls
            //            // in a thread-safe manner.
            //            //var op = Dispatcher?.BeginInvoke(() =>
            //            //{
            //            //    this.Title = $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
            //            //    //this.Title = this.Title += $"{filename}, ";
            //            //});
            //            Dispatcher?.Invoke(() =>
            //            {
            //                this.Title = $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
            //            });
            //            using (Bitmap bitmap = new Bitmap(currentFile))
            //            {
            //                bitmap.RotateFlip(RotateFlipType.Rotate180FlipNone);
            //                bitmap.Save(Path.Combine(outputDirectory, filename));
            //            }
            //        }
            //    );
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine(e);
            //    throw;
            //}

            // Use ParallelOptions instance to store the CancellationToken.
            ParallelOptions parOpts = new ParallelOptions();
            parOpts.CancellationToken = _cancelToken.Token;
            parOpts.MaxDegreeOfParallelism = System.Environment.ProcessorCount;

            try
            {
                // Process the image data in a parallel manner!
                Parallel.ForEach(files, parOpts, currentFile =>
                    {
                        parOpts
                            .CancellationToken.ThrowIfCancellationRequested();
                        string filename = Path.GetFileName(currentFile);
                        Dispatcher?.Invoke(() =>
                            {
                                this.Title =
                                    $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
                            }
                        );
                        using (Bitmap bitmap = new Bitmap(currentFile))
                        {
                            bitmap.RotateFlip(RotateFlipType.Rotate180FlipNone);
                            bitmap.Save(Path.Combine(outputDirectory, filename));
                        }
                        Thread.Sleep(2000);
                    }
                );
                Dispatcher?.Invoke(() => this.Title = "Done!");
            }
            catch (OperationCanceledException ex)
            {
                Dispatcher?.Invoke(() => this.Title = ex.Message);
            }
        }
        private async Task ProcessFilesAsync()
        {
            // Load up all *.jpg files, and make a new folder for the modified data.
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


            // Use ParallelOptions instance to store the CancellationToken.
            ParallelOptions parOpts = new ParallelOptions();
            parOpts.CancellationToken = _cancelToken.Token;
            parOpts.MaxDegreeOfParallelism = System.Environment.ProcessorCount;

            try
            {
                // Process the image data in a parallel manner!
                await Parallel.ForEachAsync(files, parOpts, async (currentFile, token) =>
                {
                    token.ThrowIfCancellationRequested();
                    string filename = Path.GetFileName(currentFile);
                    Dispatcher?.Invoke(() =>
                        {
                            this.Title =
                                $"Processing {filename} on thread {Environment.CurrentManagedThreadId}";
                        }
                    );

                    using (Bitmap bitmap = new Bitmap(currentFile))
                    {
                        
                        bitmap.RotateFlip(RotateFlipType.Rotate180FlipNone);
                        bitmap.Save(Path.Combine(outputDirectory, filename));
                    }
                    Thread.Sleep(2000);
                });
                Dispatcher?.Invoke(() => this.Title = "Done!");
            }
            catch (OperationCanceledException ex)
            {
                Dispatcher?.Invoke(() => this.Title = ex.Message);
            }
        }

    }
}
