using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.EntityFrameworkCore;
using WebTravel.Data;

namespace WebTravel
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();


            builder.Services.AddHttpContextAccessor();
            builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme)
            .AddCookie(options =>
            {
                options.LoginPath = "/Home";   // Đường dẫn login
                options.LogoutPath = "/Home"; // Đường dẫn logout
                options.AccessDeniedPath = "/Account/AccessDenied"; // Trang từ chối truy cập
                options.Cookie.Name = "CookieAuth";   // Tên cookie
                options.Cookie.HttpOnly = true;        // Ngăn JavaScript truy cập cookie
                options.ExpireTimeSpan = TimeSpan.FromDays(5); // Hết hạn sau 5 ngày
                options.SlidingExpiration = true; // Reset lại thời gian nếu user hoạt động
            });
            builder.Services.AddDistributedMemoryCache();

            builder.Services.AddSession(options =>
            {
                options.IdleTimeout = TimeSpan.FromHours(1); // Session tồn tại trong 1 giờ
                options.Cookie.HttpOnly = true;
                options.Cookie.IsEssential = true;

            });

            // Thêm HttpContextAccessor để truy cập Session trong Razor View
            builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

            // Cấu hình Controller với Views
            builder.Services.AddControllersWithViews();

            // Add services to the container.
            builder.Services.AddControllersWithViews();
            builder.Services.AddAuthorization();
            // Add services to the container.
            builder.Services.AddControllersWithViews();
            builder.Services.AddDbContext<NCKHContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
            var app = builder.Build();
            app.UseSession();

            app.UseRouting();
            app.UseAuthorization();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}
