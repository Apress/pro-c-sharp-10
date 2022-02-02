namespace CustomException;
public class CarIsDeadException : ApplicationException
{
    private string _messageDetails = String.Empty;
    public DateTime ErrorTimeStamp { get; set; }
    public string CauseOfError { get; set; }

    public CarIsDeadException() { }
    //public CarIsDeadException(string message,
    //    string cause, DateTime time)
    //{
    //    _messageDetails = message;
    //    CauseOfError = cause;
    //    ErrorTimeStamp = time;
    //}
    // Feed message to parent constructor.
    //public CarIsDeadException(string message, string cause, DateTime time)
    //    :base(message)
    //{
    //    CauseOfError = cause;
    //    ErrorTimeStamp = time;
    //}

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

    // Override the Exception.Message property.
    //public override string Message => $"Car Error Message: {_messageDetails}";
}
