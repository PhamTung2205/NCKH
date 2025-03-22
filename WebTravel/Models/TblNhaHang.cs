using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblNhaHang
{
    public int PkIdNhaHang { get; set; }

    public string? SnameNhaHang { get; set; }

    public string? SimageNhaHang { get; set; }

    public string? ScontentNhaHang { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhNhaHang> TblTinhThanhNhaHangs { get; set; } = new List<TblTinhThanhNhaHang>();
}
