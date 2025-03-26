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
        [HttpPost]
        public async Task<IActionResult> CreateLoTrinh( string name,DateOnly start,DateOnly end, int idTinh)
        {
            var userId = HttpContext.Session.GetInt32("UserId");

            if (userId == null)
            {
                TempData["Error"] = "Vui lòng đăng nhập tài khoản để được đánh giá";

                return RedirectToAction("LoTrinh/Create");
            }
            return RedirectToAction();
        }
    }
}
