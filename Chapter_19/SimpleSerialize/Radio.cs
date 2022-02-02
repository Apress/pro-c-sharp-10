namespace SimpleSerialize;

public class Radio
{
    //[JsonInclude]
    public bool HasTweeters;
    //[JsonInclude]
    public bool HasSubWoofers;
    //[JsonInclude]
    public List<double> StationPresets { get; set; }

    //[JsonInclude]
    public string RadioId = "XF-552RR6";

    public override string ToString()
    {
        var presets = string.Join(",", StationPresets.Select(i => i.ToString()).ToList());
        return $"HasTweeters:{HasTweeters} HasSubWoofers:{HasSubWoofers} Station Presets:{presets}";
    }
}
