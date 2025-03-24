using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;
using WebTravel.Models;

namespace WebTravel.Controllers
{
    public class CommentController : Controller
    {
        private readonly ILogger<CommentController> _logger;
        private readonly NCKHContext _context;
        public CommentController(ILogger<CommentController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        // Xử lý khi người dùng gửi form
        [HttpPost]
        public async Task<IActionResult> SubmitSurvey(int rating, string review, int entityId)
        {
            var userId = HttpContext.Session.GetInt32("UserId");

            if (userId == null)
            {
                TempData["Error"] = "Vui lòng đăng nhập tài khoản để được đánh giá";

                return RedirectToAction("Details", new { id = entityId });
            }

            // Kiểm tra dữ liệu đầu vào
            if (rating < 1 || rating > 5 || string.IsNullOrWhiteSpace(review))
            {
                TempData["Error"] = "Vui lòng chọn số lượng bong bóng và nhập nội dung đánh giá.";

                return RedirectToAction("Details", new { id = entityId });
            }


            // Tạo một bản ghi mới trong bảng TblComment
            var comment = new TblComment
            {
                ScontentComment = review, // Nội dung đánh giá
                IstarComment = rating,    // Số lượng bong bóng
                FkIdTaiKhoan = userId // Lấy ID người dùng hiện tại (giả định)
            };
            var tinhthanh_comment = new TblTinhThanhComment
            {
                FkIdTinhThanh = entityId,
                FkIdComment = _context.TblTinhThanhComments.ToList().Count,
                FkIdDiaChi = 0,

            };

            // Lưu vào cơ sở dữ liệu
            _context.TblTinhThanhComments.Add(tinhthanh_comment);
            _context.TblComments.Add(comment);
            _context.SaveChanges();

            // Hiển thị thông báo thành công
            TempData["Message"] = "Cảm ơn bạn đã gửi đánh giá!";

            return RedirectToAction("Details", new { id = entityId });
        }
    }
}
