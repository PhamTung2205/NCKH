using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblGiaiTri
{
    public int PkIdGiaiTri { get; set; }

    public string? SnameGiaiTri { get; set; }

    public string? SimageGiaiTri { get; set; }

    public string? ScontentGiaiTri { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhGiaiTri> TblTinhThanhGiaiTris { get; set; } = new List<TblTinhThanhGiaiTri>();
}
