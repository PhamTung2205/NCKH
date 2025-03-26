using Microsoft.AspNetCore.Mvc;

namespace WebTravel.Controllers
{
    public class LoTrinhController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Create()
        {
            return View();
        }
    }
}
