using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblMonAn
{
    public int PkIdMonAn { get; set; }

    public string? SnameMonAn { get; set; }

    public string? SimageMonAn { get; set; }

    public string? ScontentMonAn { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhMonAn> TblTinhThanhMonAns { get; set; } = new List<TblTinhThanhMonAn>();
}
