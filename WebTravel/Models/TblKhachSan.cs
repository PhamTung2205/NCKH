using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblKhachSan
{
    public int PkIdKhachSan { get; set; }

    public string? SnameKhachSan { get; set; }

    public string? SimageKhachSan { get; set; }

    public string? ScontentKhachSan { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhKhachSan> TblTinhThanhKhachSans { get; set; } = new List<TblTinhThanhKhachSan>();
}
