using System.Runtime.Serialization;

namespace ProcessMultipleExceptions;
[Serializable]
public class CarIsDeadException : ApplicationException
{
    private string _messageDetails = String.Empty;
    public DateTime ErrorTimeStamp { get; set; }
    public string CauseOfError { get; set; }

    public CarIsDeadException() { }

    public CarIsDeadException(string cause, DateTime time) : this(cause, time, string.Empty)
    {
    }

    public CarIsDeadException(string cause, DateTime time, string message) : this(cause, time, message, null)
    {
    }

    public CarIsDeadException(string cause, DateTime time, string message, System.Exception inner)
        : base(message, inner)
    {
        CauseOfError = cause;
        ErrorTimeStamp = time;
    }

    protected CarIsDeadException(string cause, DateTime time,
        SerializationInfo info, StreamingContext context)
        : base(info, context)
    {
        CauseOfError = cause;
        ErrorTimeStamp = time;
    }
}
