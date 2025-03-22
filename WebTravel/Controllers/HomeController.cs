using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebTravel.Data;
using WebTravel.Models;

namespace WebTravel.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly NCKHContext _context;
        public HomeController(ILogger<HomeController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}
