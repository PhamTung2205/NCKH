using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel.Controllers
{
    public class TinhThanhController : Controller
    {

        private readonly ILogger<TinhThanhController> _logger;
        private readonly NCKHContext _context;
        public TinhThanhController(ILogger<TinhThanhController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        //Get: TinhThanh/Details/0
        public async Task<IActionResult> Details( int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var TinhThanh = await _context.TblTinhThanhs.FirstOrDefaultAsync(t => t.PkIdTinhThanh == id);
            if (TinhThanh == null)
            {
                return NotFound();
            }
            return View(TinhThanh);
        }
    }
}
