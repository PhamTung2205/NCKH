using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel.Controllers
{
    public class MonAnController : Controller
    {
        private readonly ILogger<MonAnController> _logger;
        private readonly NCKHContext _context;
        public MonAnController(ILogger<MonAnController> logger, NCKHContext context)
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
            var MonAn = await _context.TblMonAns.FirstOrDefaultAsync(m => m.PkIdMonAn == id);
            if (MonAn == null)
            {
                return NotFound();
            }
            return View(MonAn);
        }
    }
}
