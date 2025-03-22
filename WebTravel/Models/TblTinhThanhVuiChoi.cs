using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblTinhThanhVuiChoi
{
    public int FkIdTinhThanh { get; set; }

    public int FkIdVuiChoi { get; set; }

    public int FkIdDiaChi { get; set; }

    public virtual TblDiaChi FkIdDiaChiNavigation { get; set; } = null!;

    public virtual TblTinhThanh FkIdTinhThanhNavigation { get; set; } = null!;

    public virtual TblVuiChoi FkIdVuiChoiNavigation { get; set; } = null!;
}
