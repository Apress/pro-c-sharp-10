namespace LambdaExpressions;
public class SimpleMath
{
    public delegate void MathMessage(string msg, int result);
    private MathMessage _mmDelegate;

    public void SetMathHandler(MathMessage target)
    {
        _mmDelegate = target;
    }

    public void Add(int x, int y)
    {
        _mmDelegate?.Invoke("Adding has completed!", x + y);
    }
}
