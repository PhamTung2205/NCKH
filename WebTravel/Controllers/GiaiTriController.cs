using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel.Controllers
{
    public class GiaiTriController : Controller
    {
        private readonly ILogger<GiaiTriController> _logger;
        private readonly NCKHContext _context;
        public GiaiTriController(ILogger<GiaiTriController> logger, NCKHContext context)
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
            var GiaiTri = await _context.TblGiaiTris.FirstOrDefaultAsync(g => g.PkIdGiaiTri == id);
            if (GiaiTri == null)
            {
                return NotFound();
            }
            return View(GiaiTri);
        }
    }
}
