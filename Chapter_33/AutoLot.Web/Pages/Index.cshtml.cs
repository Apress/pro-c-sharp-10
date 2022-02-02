using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace AutoLot.Web.Pages;

public class IndexModel : PageModel
{
    private readonly ILogger<IndexModel> _logger;

    public IndexModel(ILogger<IndexModel> logger)
    {
        _logger = logger;
    }

    public DealerInfo DealerInfoInstance { get; set; }
    public void OnGet([FromServices]IOptionsMonitor<DealerInfo> dealerOptions)
    {
        DealerInfoInstance = dealerOptions.CurrentValue;

    }
}
