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

namespace RenderingWithShapes
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private enum SelectedShape
        {
            Circle,
            Rectangle,
            Line
        }

        private SelectedShape _currentShape;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void CircleOption_Click(object sender, RoutedEventArgs e)
        {
            _currentShape = SelectedShape.Circle;
        }

        private void RectOption_Click(object sender, RoutedEventArgs e)
        {
            _currentShape = SelectedShape.Rectangle;
        }

        private void LineOption_Click(object sender, RoutedEventArgs e)
        {
            _currentShape = SelectedShape.Line;
        }

        private void CanvasDrawingArea_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Shape shapeToRender = null;
            // Configure the correct shape to draw.
            switch (_currentShape)
            {
                case SelectedShape.Circle:
                    shapeToRender = new Ellipse() {Height = 35, Width = 35};
                    // Make a RadialGradientBrush in code!
                    RadialGradientBrush brush = new RadialGradientBrush();
                    brush.GradientStops.Add(new GradientStop(
                        (Color)ColorConverter.ConvertFromString("#FF17F800"), 0));
                    brush.GradientStops.Add(new GradientStop(
                        (Color)ColorConverter.ConvertFromString("#FF24F610"), 1));
                    brush.GradientStops.Add(new GradientStop(
                        (Color)ColorConverter.ConvertFromString("#FF1A6A12"), 0.546));
                    shapeToRender.Fill = brush;
                    break;
                case SelectedShape.Rectangle:
                    shapeToRender = new Rectangle()
                        {Fill = Brushes.Red, Height = 35, Width = 35, RadiusX = 10, RadiusY = 10};
                    break;
                case SelectedShape.Line:
                    shapeToRender = new Line()
                    {
                        Stroke = Brushes.Blue,
                        StrokeThickness = 10,
                        X1 = 0,
                        X2 = 50,
                        Y1 = 0,
                        Y2 = 50,
                        StrokeStartLineCap = PenLineCap.Triangle,
                        StrokeEndLineCap = PenLineCap.Round
                    };
                    break;
                default:
                    return;
            }
            if (flipCanvas.IsChecked == true)
            {
                RotateTransform rotate = new RotateTransform(-180);
                shapeToRender.RenderTransform = rotate;
            }
            // Set top/left position to draw in the canvas.
            Canvas.SetLeft(shapeToRender, e.GetPosition(canvasDrawingArea).X);
            Canvas.SetTop(shapeToRender, e.GetPosition(canvasDrawingArea).Y);
            // Draw shape!
            canvasDrawingArea.Children.Add(shapeToRender);
        }

        private void CanvasDrawingArea_MouseRightButtonDown(object sender, MouseButtonEventArgs e)
        {
            // First, get the X,Y location of where the user clicked.
            Point pt = e.GetPosition((Canvas) sender);
            // Use the HitTest() method of VisualTreeHelper to see if the user clicked
            // on an item in the canvas.
            HitTestResult result = VisualTreeHelper.HitTest(canvasDrawingArea, pt);
            // If the result is not null, they DID click on a shape!
            if (result != null)
            {
                // Get the underlying shape clicked on, and remove it from
                // the canvas.
                canvasDrawingArea.Children.Remove(result.VisualHit as Shape);

            }
        }

        private void FlipCanvas_Click(object sender, RoutedEventArgs e)
        {
            if (flipCanvas.IsChecked == true)
            {
                RotateTransform rotate = new RotateTransform(-180);
                canvasDrawingArea.LayoutTransform = rotate;
            }
            else
            {
                canvasDrawingArea.LayoutTransform = null;
            }

        }
    }
}
