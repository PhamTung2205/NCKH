using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblType
{
    public int PkIdType { get; set; }

    public string? SnameType { get; set; }

    public virtual ICollection<TblDiaChi> TblDiaChis { get; set; } = new List<TblDiaChi>();

    public virtual ICollection<TblGiaiTri> TblGiaiTris { get; set; } = new List<TblGiaiTri>();

    public virtual ICollection<TblKhachSan> TblKhachSans { get; set; } = new List<TblKhachSan>();

    public virtual ICollection<TblMonAn> TblMonAns { get; set; } = new List<TblMonAn>();

    public virtual ICollection<TblNhaHang> TblNhaHangs { get; set; } = new List<TblNhaHang>();

    public virtual ICollection<TblTinhThanh> TblTinhThanhs { get; set; } = new List<TblTinhThanh>();
}
