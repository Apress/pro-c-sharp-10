namespace InterfaceHierarchy;
public interface IAdvancedDraw : IDrawable
{
    void DrawInBoundingBox(int top, int left, int bottom, int right);
    void DrawUpsideDown();
    new int TimeToDraw() => 15;
}
