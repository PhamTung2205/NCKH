using Microsoft.AspNetCore.Mvc;

namespace WebTravel.Controllers
{
    public class TestController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
