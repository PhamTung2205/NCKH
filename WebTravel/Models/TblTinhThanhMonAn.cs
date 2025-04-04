﻿using System;
using System.Collections.Generic;

namespace WebTravel.Models;

public partial class TblTinhThanhMonAn
{
    public int FkIdTinhThanh { get; set; }

    public int FkIdMonAn { get; set; }

    public int FkIdDiaChi { get; set; }

    public int FkIdComment { get; set; }

    public int? FkIdYeuThich { get; set; }

    public virtual TblComment FkIdCommentNavigation { get; set; } = null!;

    public virtual TblDiaChi FkIdDiaChiNavigation { get; set; } = null!;

    public virtual TblMonAn FkIdMonAnNavigation { get; set; } = null!;

    public virtual TblTinhThanh FkIdTinhThanhNavigation { get; set; } = null!;

    public virtual TblYeuThich? FkIdYeuThichNavigation { get; set; }
}
