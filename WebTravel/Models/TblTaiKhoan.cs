using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblTaiKhoan
{
    public int PkIdTaiKhoan { get; set; }

    public string? SnameTaiKhoan { get; set; }

    public string? SphoneTaiKhoan { get; set; }

    public string? SpassTaiKhoan { get; set; }

    public int? FkIdQuyen { get; set; }

    public virtual TblQuyen? FkIdQuyenNavigation { get; set; }

    public virtual ICollection<TblComment> TblComments { get; set; } = new List<TblComment>();

    public virtual ICollection<TblYeuThich> TblYeuThiches { get; set; } = new List<TblYeuThich>();
}
