﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;
using WebTravel.Models;

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
        public async Task<IActionResult> Comment(int? id)
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

        // Xử lý khi người dùng gửi form
        [HttpPost]
        public async Task<IActionResult> SubmitSurvey(int rating, string review, int entityId, List<IFormFile> images)
        {
            var userId =  HttpContext.Session.GetInt32("UserId");

            if (userId == null)
            {
                TempData["Error"] = "Vui lòng đăng nhập tài khoản để được đánh giá";

                return RedirectToAction("Comment", new { id = entityId });
            }
            
            if (images != null && images.Count > 0)
            {
                // Đặt đường dẫn thư mục lưu ảnh
                var uploadPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot/img/Comment");

                // Kiểm tra và tạo thư mục nếu chưa tồn tại
                if (!Directory.Exists(uploadPath))
                {
                    Directory.CreateDirectory(uploadPath);
                }

                foreach (var image in images)
                {
                    if (image.Length > 0)
                    {
                        // Lấy tên file từ ảnh
                        var fileName = Path.GetFileName(image.FileName);
                        var filePath = Path.Combine(uploadPath, fileName);

                        using (var stream = new FileStream(filePath, FileMode.Create))
                        {
                            await image.CopyToAsync(stream);
                        }
                    }
                }
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
                FkIdTaiKhoan = userId, // Lấy ID người dùng hiện tại (giả định)
                SimageComment = images.Count > 0 ? images[0].FileName : null

            };
            _context.TblComments.Add(comment);
            _context.SaveChanges();
            var tinhthanh_comment = new TblTinhThanhComment
            {
                FkIdTinhThanh = entityId,
                FkIdComment = _context.TblComments.ToList().Count,
                FkIdDiaChi = 1
                
            };

            // Lưu vào cơ sở dữ liệu
            _context.TblTinhThanhComments.Add(tinhthanh_comment);
            _context.SaveChanges();

            // Hiển thị thông báo thành công
            TempData["Message"] = "Cảm ơn bạn đã gửi đánh giá!";

            return RedirectToAction("Comment", new { id = entityId });
        }
    }
}
