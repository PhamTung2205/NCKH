using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblVuiChoi
{
    public int PkIdVuiChoi { get; set; }

    public string? SnameVuiChoi { get; set; }

    public string? SimageVuiChoi { get; set; }

    public string? ScontentVuiChoi { get; set; }

    public int? FkIdType { get; set; }

    public virtual TblType? FkIdTypeNavigation { get; set; }

    public virtual ICollection<TblTinhThanhVuiChoi> TblTinhThanhVuiChois { get; set; } = new List<TblTinhThanhVuiChoi>();
}
