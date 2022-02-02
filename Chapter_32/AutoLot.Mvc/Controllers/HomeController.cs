using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using AutoLot.Mvc.Models;

namespace AutoLot.Mvc.Controllers;

public class HomeController : Controller
{
    private readonly IAppLogging<HomeController> _logger;

    public HomeController(IAppLogging<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index([FromServices] IOptionsMonitor<DealerInfo> dealerMonitor)
    {
        _logger.LogAppError("Test error");
        var vm = dealerMonitor.CurrentValue;
        return View(vm);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
