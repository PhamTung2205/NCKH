using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblLichTrinh
{
    public int PkIdLichTrinh { get; set; }

    public string? SnameLichTrinh { get; set; }

    public string? SlistIdTinh { get; set; }

    public string? SlistIdGiaiTri { get; set; }

    public string? SlistIdMonAn { get; set; }

    public string? SlistIdKhachSan { get; set; }

    public string? SlistIdNhaHang { get; set; }

    public int? FkIdTaiKhoan { get; set; }

    public virtual TblTaiKhoan? FkIdTaiKhoanNavigation { get; set; }
}
