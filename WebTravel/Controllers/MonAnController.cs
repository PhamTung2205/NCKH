using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;
using WebTravel.Models;

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
        public async Task<IActionResult> Comment(int? id)
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
        // Xử lý khi người dùng gửi form
        [HttpPost]
        public async Task<IActionResult> SubmitSurvey(int rating, string review, int entityId)
        {
            var userId = HttpContext.Session.GetInt32("UserId");

            if (userId == null)
            {
                TempData["Error"] = "Vui lòng đăng nhập tài khoản để được đánh giá";

                return RedirectToAction("Comment", new { id = entityId });
            }

            // Kiểm tra dữ liệu đầu vào
            if (rating < 1 || rating > 5 || string.IsNullOrWhiteSpace(review))
            {
                TempData["Error"] = "Vui lòng chọn số lượng bong bóng và nhập nội dung đánh giá.";

                return RedirectToAction("Comment", new { id = entityId });
            }


            // Tạo một bản ghi mới trong bảng TblComment
            var comment = new TblComment
            {
                ScontentComment = review, // Nội dung đánh giá
                IstarComment = rating,    // Số lượng bong bóng
                FkIdTaiKhoan = userId // Lấy ID người dùng hiện tại (giả định)
            };
            _context.TblComments.Add(comment);
            _context.SaveChanges();
            var tinhthanh_monan = new TblTinhThanhMonAn
            {
                FkIdTinhThanh = 1,
                FkIdMonAn = entityId,
                FkIdComment = _context.TblComments.Max(c => c.PkIdComment),
                FkIdDiaChi = 1

            };
            

            // Lưu vào cơ sở dữ liệu
            _context.TblTinhThanhMonAns.Add(tinhthanh_monan);
            _context.SaveChanges();

            // Hiển thị thông báo thành công
            TempData["Message"] = "Cảm ơn bạn đã gửi đánh giá!";

            return RedirectToAction("Comment", new { id = entityId });
        }
    }
}

