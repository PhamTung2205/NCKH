using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblComment
{
    public int PkIdComment { get; set; }

    public string? ScontentComment { get; set; }

    public string? SimageComment { get; set; }

    public int? IstarComment { get; set; }

    public int? FkIdTaiKhoan { get; set; }

    public virtual TblTaiKhoan? FkIdTaiKhoanNavigation { get; set; }

    public virtual ICollection<TblTinhThanhComment> TblTinhThanhComments { get; set; } = new List<TblTinhThanhComment>();

    public virtual ICollection<TblTinhThanhGiaiTri> TblTinhThanhGiaiTris { get; set; } = new List<TblTinhThanhGiaiTri>();

    public virtual ICollection<TblTinhThanhKhachSan> TblTinhThanhKhachSans { get; set; } = new List<TblTinhThanhKhachSan>();

    public virtual ICollection<TblTinhThanhMonAn> TblTinhThanhMonAns { get; set; } = new List<TblTinhThanhMonAn>();

    public virtual ICollection<TblTinhThanhNhaHang> TblTinhThanhNhaHangs { get; set; } = new List<TblTinhThanhNhaHang>();
}
