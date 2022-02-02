using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace RenderingWithVisuals
{
    public class CustomVisualFrameworkElement : FrameworkElement
    {
        // A collection of all the visuals we are building.
        VisualCollection theVisuals;

        public CustomVisualFrameworkElement()
        {
            // Fill the VisualCollection with a few DrawingVisual objects.
            // The ctor arg represents the owner of the visuals.
            theVisuals = new VisualCollection(this) {AddRect(), AddCircle()};
            this.MouseDown += CustomVisualFrameworkElement_MouseDown;
        }

        void CustomVisualFrameworkElement_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Figure out where the user clicked.
            Point pt = e.GetPosition((UIElement)sender);
            // Call helper function via delegate to see if we clicked on a visual.
            VisualTreeHelper.HitTest(this, null,
                new HitTestResultCallback(myCallback), new PointHitTestParameters(pt));
        }

        public HitTestResultBehavior myCallback(HitTestResult result)
        {
            // Toggle between a skewed rendering and normal rendering,
            // if a visual was clicked.
            if (result.VisualHit.GetType() == typeof(DrawingVisual))
            {
                if (((DrawingVisual)result.VisualHit).Transform == null)
                {
                    ((DrawingVisual)result.VisualHit).Transform = new SkewTransform(7, 7);
                }
                else
                {
                    ((DrawingVisual)result.VisualHit).Transform = null;
                }
            }

            // Tell HitTest() to stop drilling into the visual tree.
            return HitTestResultBehavior.Stop;
        }

        private Visual AddCircle()
        {
            DrawingVisual drawingVisual = new DrawingVisual();
            // Retrieve the DrawingContext in order to create new drawing content.
            using DrawingContext drawingContext = drawingVisual.RenderOpen();
            // Create a circle and draw it in the DrawingContext.
            drawingContext.DrawEllipse(Brushes.DarkBlue, null, new Point(70, 90), 40, 50);

            return drawingVisual;
        }

        private Visual AddRect()
        {
            DrawingVisual drawingVisual = new DrawingVisual();
            using DrawingContext drawingContext = drawingVisual.RenderOpen();
            Rect rect = new Rect(new Point(160, 100), new Size(320, 80));
            drawingContext.DrawRectangle(Brushes.Tomato, null, rect);

            return drawingVisual;
        }

        protected override int VisualChildrenCount => theVisuals.Count;

        protected override Visual GetVisualChild(int index)
        {
            // Value must be greater than zero, so do a sanity check.
            if (index < 0 || index >= theVisuals.Count)
            {
                throw new ArgumentOutOfRangeException();
            }

            return theVisuals[index];
        }
    }
}