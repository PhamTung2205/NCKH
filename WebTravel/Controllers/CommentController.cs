using Microsoft.AspNetCore.Mvc;

namespace WebTravel.Controllers
{
    public class CommentController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
