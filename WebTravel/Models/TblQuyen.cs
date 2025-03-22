using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblQuyen
{
    public int PkIdQuyen { get; set; }

    public string? SnameQuyen { get; set; }

    public virtual ICollection<TblTaiKhoan> TblTaiKhoans { get; set; } = new List<TblTaiKhoan>();
}
