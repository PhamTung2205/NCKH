using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblDiaChi
{
    public int PkIdDiaChi { get; set; }

    public string? SnameDiaChi { get; set; }

    public string? StypeDiaChi { get; set; }

    public string? StimeDiaChi { get; set; }

    public string? Sprice { get; set; }

    public string? ScontactDiaChi { get; set; }

    public string? SphoneDiaChi { get; set; }

    public string? ScontentDiaChi { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhComment> TblTinhThanhComments { get; set; } = new List<TblTinhThanhComment>();

    public virtual ICollection<TblTinhThanhGiaiTri> TblTinhThanhGiaiTris { get; set; } = new List<TblTinhThanhGiaiTri>();

    public virtual ICollection<TblTinhThanhKhachSan> TblTinhThanhKhachSans { get; set; } = new List<TblTinhThanhKhachSan>();

    public virtual ICollection<TblTinhThanhMonAn> TblTinhThanhMonAns { get; set; } = new List<TblTinhThanhMonAn>();

    public virtual ICollection<TblTinhThanhNhaHang> TblTinhThanhNhaHangs { get; set; } = new List<TblTinhThanhNhaHang>();
}
