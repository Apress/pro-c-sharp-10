namespace CustomInterfaces;
public abstract class CloneableType
{
    // Only derived types can support this
    // "polymorphic interface." Classes in other
    // hierarchies have no access to this abstract
    // member.
    public abstract object Clone();
}
