using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel.Controllers
{
    public class KhachSanController : Controller
    {
        private readonly ILogger<KhachSanController> _logger;
        private readonly NCKHContext _context;
        public KhachSanController(ILogger<KhachSanController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        //Get: TinhThanh/Details/0
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var KhachSan = await _context.TblKhachSans.FirstOrDefaultAsync(k => k.PkIdKhachSan == id);
            if (KhachSan == null)
            {
                return NotFound();
            }
            return View(KhachSan);
        }
    }
}
