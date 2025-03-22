using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel.Controllers
{
    public class NhaHangController : Controller
    {
        private readonly ILogger<NhaHangController> _logger;
        private readonly NCKHContext _context;
        public NhaHangController(ILogger<NhaHangController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        //Get: NhahHang/Details/0
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var NhaHang = await _context.TblNhaHangs.FirstOrDefaultAsync(n => n.PkIdNhaHang == id);
            if (NhaHang == null)
            {
                return NotFound();
            }
            return View(NhaHang);
        }
    }
}
