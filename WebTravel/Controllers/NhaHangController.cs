using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;
using WebTravel.Models;

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
        public async Task<IActionResult> Comment(int? id)
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
            var tinhthanh_nhahang = new TblTinhThanhNhaHang
            {
                FkIdTinhThanh = 1,
                FkIdNhaHang = entityId,
                FkIdComment = _context.TblComments.Max(c => c.PkIdComment),
                FkIdDiaChi = 1

            };

            // Lưu vào cơ sở dữ liệu
            _context.TblTinhThanhNhaHangs.Add(tinhthanh_nhahang);
            _context.SaveChanges();

            // Hiển thị thông báo thành công
            TempData["Message"] = "Cảm ơn bạn đã gửi đánh giá!";

            return RedirectToAction("Comment", new { id = entityId });
        }
    }
}
