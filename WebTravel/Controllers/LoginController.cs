using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using System.Text.RegularExpressions;
using WebTravel.Data;
using WebTravel.Models;


namespace WebTravel.Controllers
{
    public class LoginController : Controller
    {

        private readonly ILogger<LoginController> _logger;
        private readonly NCKHContext _context;
        public LoginController(ILogger<LoginController> logger, NCKHContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Login(string phoneNumber, string password)
        {
            var user = await _context.TblTaiKhoans
                .Include(u => u.FkIdQuyenNavigation)
                .FirstOrDefaultAsync(u => u.SphoneTaiKhoan == phoneNumber && u.SpassTaiKhoan == password);

            if (user != null)
            {
                // Lưu thông tin vào Session
                HttpContext.Session.SetString("UserName", user.SnameTaiKhoan ?? "Người dùng");
                HttpContext.Session.SetInt32("UserId", user.PkIdTaiKhoan);
                HttpContext.Session.SetString("UserPhone", user.SphoneTaiKhoan);
                HttpContext.Session.SetString("UserQuyen", user.FkIdQuyenNavigation.SnameQuyen);

                return RedirectToAction("Index", "Home");
            }

            ViewBag.Error = "Số điện thoại hoặc mật khẩu không đúng!";
            return View();
        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        public async Task<IActionResult> Create(string Username, string PhoneNumber, string Password)
        {
            var phoneUser = await _context.TblTaiKhoans.Include(u => u.FkIdQuyenNavigation).FirstOrDefaultAsync(u => u.SphoneTaiKhoan == PhoneNumber);
            if (Username == null || PhoneNumber == null || Password == null)
            {
                ViewBag.Error = "Không được để trống các ô";
                return View();
            }
            if (phoneUser != null)
            {
                ViewBag.Error = "Số điện thoại đã được sử dụng";
                return View();
            }
            if (Password.Length < 9 || !Password.Any(char.IsUpper))
            {
                ViewBag.Error = "Mật khẩu phải 8 ký tự và có chữ viết hoa";
                return View();
            }
            //Tạo tài khoản mới
            var newUser = new TblTaiKhoan
            {
                SnameTaiKhoan = Username,
                SphoneTaiKhoan = PhoneNumber,
                SpassTaiKhoan = Password, // Lưu ý: Cần mã hóa mật khẩu nếu cần
                FkIdQuyen = 2
            };

            _context.TblTaiKhoans.Add(newUser);
            await _context.SaveChangesAsync();

            ViewBag.Success = "Đăng ký thành công! Hãy đăng nhập.";
            return RedirectToAction("Index", "Login");
        }
    }
}
