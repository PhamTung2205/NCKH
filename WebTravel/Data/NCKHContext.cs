using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using WebTravel.Models;

namespace WebTravel.Data;

public partial class NCKHContext : DbContext
{
    public NCKHContext()
    {
    }

    public NCKHContext(DbContextOptions<NCKHContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TblComment> TblComments { get; set; }

    public virtual DbSet<TblDiaChi> TblDiaChis { get; set; }

    public virtual DbSet<TblGiaiTri> TblGiaiTris { get; set; }

    public virtual DbSet<TblKhachSan> TblKhachSans { get; set; }

    public virtual DbSet<TblLichTrinh> TblLichTrinhs { get; set; }

    public virtual DbSet<TblMonAn> TblMonAns { get; set; }

    public virtual DbSet<TblNhaHang> TblNhaHangs { get; set; }

    public virtual DbSet<TblQuyen> TblQuyens { get; set; }

    public virtual DbSet<TblTaiKhoan> TblTaiKhoans { get; set; }

    public virtual DbSet<TblTinhThanh> TblTinhThanhs { get; set; }

    public virtual DbSet<TblTinhThanhComment> TblTinhThanhComments { get; set; }

    public virtual DbSet<TblTinhThanhGiaiTri> TblTinhThanhGiaiTris { get; set; }

    public virtual DbSet<TblTinhThanhKhachSan> TblTinhThanhKhachSans { get; set; }

    public virtual DbSet<TblTinhThanhMonAn> TblTinhThanhMonAns { get; set; }

    public virtual DbSet<TblTinhThanhNhaHang> TblTinhThanhNhaHangs { get; set; }

    public virtual DbSet<TblType> TblTypes { get; set; }

    public virtual DbSet<TblYeuThich> TblYeuThiches { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-AHRO7TI\\SQLEXPRESS;Initial Catalog=NCKH;Integrated Security=True;Connect Timeout=30;Encrypt=True;Trust Server Certificate=True;Application Intent=ReadWrite;Multi Subnet Failover=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<TblComment>(entity =>
        {
            entity.HasKey(e => e.PkIdComment).HasName("PkIdComment_");

            entity.ToTable("tblComment");

            entity.Property(e => e.IstarComment).HasColumnName("IStarComment");
            entity.Property(e => e.ScontentComment).HasColumnName("SContentComment");

            entity.HasOne(d => d.FkIdTaiKhoanNavigation).WithMany(p => p.TblComments)
                .HasForeignKey(d => d.FkIdTaiKhoan)
                .HasConstraintName("FkIdComment_TaiKhoan");
        });

        modelBuilder.Entity<TblDiaChi>(entity =>
        {
            entity.HasKey(e => e.PkIdDiaChi).HasName("PkIdDiaChi_");

            entity.ToTable("tblDiaChi");

            entity.Property(e => e.ScontactDiaChi)
                .HasMaxLength(100)
                .HasColumnName("SContactDiaChi");
            entity.Property(e => e.ScontentDiaChi).HasColumnName("SContentDiaChi");
            entity.Property(e => e.SnameDiaChi)
                .HasMaxLength(100)
                .HasColumnName("SNameDiaChi");
            entity.Property(e => e.SphoneDiaChi)
                .HasMaxLength(100)
                .HasColumnName("SPhoneDiaChi");
            entity.Property(e => e.Sprice)
                .HasMaxLength(100)
                .HasColumnName("SPrice");
            entity.Property(e => e.StimeDiaChi)
                .HasMaxLength(100)
                .HasColumnName("STimeDiaChi");
            entity.Property(e => e.StypeDiaChi)
                .HasMaxLength(100)
                .HasColumnName("STypeDiaChi");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblDiaChis)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeDiaChi");
        });

        modelBuilder.Entity<TblGiaiTri>(entity =>
        {
            entity.HasKey(e => e.PkIdGiaiTri).HasName("PkIdVuiChoi_");

            entity.ToTable("tblGiaiTri");

            entity.Property(e => e.ScontentGiaiTri).HasColumnName("SContentGiaiTri");
            entity.Property(e => e.SimageGiaiTri)
                .HasMaxLength(100)
                .HasColumnName("SImageGiaiTri");
            entity.Property(e => e.SnameGiaiTri)
                .HasMaxLength(100)
                .HasColumnName("SNameGiaiTri");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblGiaiTris)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeVuiChoi");
        });

        modelBuilder.Entity<TblKhachSan>(entity =>
        {
            entity.HasKey(e => e.PkIdKhachSan).HasName("PkIdKhachSan_");

            entity.ToTable("tblKhachSan");

            entity.Property(e => e.ScontentKhachSan).HasColumnName("SContentKhachSan");
            entity.Property(e => e.SimageKhachSan)
                .HasMaxLength(100)
                .HasColumnName("SImageKhachSan");
            entity.Property(e => e.SnameKhachSan)
                .HasMaxLength(100)
                .HasColumnName("SNameKhachSan");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblKhachSans)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeKhachSan");
        });

        modelBuilder.Entity<TblLichTrinh>(entity =>
        {
            entity.HasKey(e => e.PkIdLichTrinh).HasName("PkIdLichTrinh_");

            entity.ToTable("tblLichTrinh");

            entity.Property(e => e.DdateEndLichTrinh).HasColumnName("DDateEndLichTrinh");
            entity.Property(e => e.DdateStartLichTrinh).HasColumnName("DDateStartLichTrinh");
            entity.Property(e => e.SlistIdGiaiTri).HasColumnName("SListIdGiaiTri");
            entity.Property(e => e.SlistIdKhachSan).HasColumnName("SListIdKhachSan");
            entity.Property(e => e.SlistIdMonAn).HasColumnName("SListIdMonAn");
            entity.Property(e => e.SlistIdNhaHang).HasColumnName("SListIdNhaHang");
            entity.Property(e => e.SlistIdTinh).HasColumnName("SListIdTinh");
            entity.Property(e => e.SnameLichTrinh)
                .HasMaxLength(100)
                .HasColumnName("SNameLichTrinh");

            entity.HasOne(d => d.FkIdTaiKhoanNavigation).WithMany(p => p.TblLichTrinhs)
                .HasForeignKey(d => d.FkIdTaiKhoan)
                .HasConstraintName("FkIdLichTrinh_TaiKhoan");
        });

        modelBuilder.Entity<TblMonAn>(entity =>
        {
            entity.HasKey(e => e.PkIdMonAn).HasName("PkIdMonAn_");

            entity.ToTable("tblMonAn");

            entity.Property(e => e.ScontentMonAn).HasColumnName("SContentMonAn");
            entity.Property(e => e.SimageMonAn)
                .HasMaxLength(100)
                .HasColumnName("SImageMonAn");
            entity.Property(e => e.SnameMonAn)
                .HasMaxLength(100)
                .HasColumnName("SNameMonAn");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblMonAns)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeMonAn");
        });

        modelBuilder.Entity<TblNhaHang>(entity =>
        {
            entity.HasKey(e => e.PkIdNhaHang).HasName("PkIdNhaHang_");

            entity.ToTable("tblNhaHang");

            entity.Property(e => e.ScontentNhaHang).HasColumnName("SContentNhaHang");
            entity.Property(e => e.SimageNhaHang)
                .HasMaxLength(100)
                .HasColumnName("SImageNhaHang");
            entity.Property(e => e.SnameNhaHang)
                .HasMaxLength(100)
                .HasColumnName("SNameNhaHang");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblNhaHangs)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeNhaHang");
        });

        modelBuilder.Entity<TblQuyen>(entity =>
        {
            entity.HasKey(e => e.PkIdQuyen).HasName("PkIdQuyen_");

            entity.ToTable("tblQuyen");

            entity.Property(e => e.SnameQuyen)
                .HasMaxLength(100)
                .HasColumnName("SNameQuyen");
        });

        modelBuilder.Entity<TblTaiKhoan>(entity =>
        {
            entity.HasKey(e => e.PkIdTaiKhoan).HasName("PkIdTaiKhoan_");

            entity.ToTable("tblTaiKhoan");

            entity.Property(e => e.SnameTaiKhoan)
                .HasMaxLength(100)
                .HasColumnName("SNameTaiKhoan");
            entity.Property(e => e.SpassTaiKhoan)
                .HasMaxLength(100)
                .HasColumnName("SPassTaiKhoan");
            entity.Property(e => e.SphoneTaiKhoan)
                .HasMaxLength(100)
                .HasColumnName("SPhoneTaiKhoan");

            entity.HasOne(d => d.FkIdQuyenNavigation).WithMany(p => p.TblTaiKhoans)
                .HasForeignKey(d => d.FkIdQuyen)
                .HasConstraintName("FkidQuyen_");
        });

        modelBuilder.Entity<TblTinhThanh>(entity =>
        {
            entity.HasKey(e => e.PkIdTinhThanh).HasName("PkIdTinhThanh_");

            entity.ToTable("tblTinhThanh");

            entity.Property(e => e.ScontentTinhThanh).HasColumnName("SContentTinhThanh");
            entity.Property(e => e.SimageTinhThanh)
                .HasMaxLength(100)
                .HasColumnName("SImageTinhThanh");
            entity.Property(e => e.SnameTinhThanh)
                .HasMaxLength(100)
                .HasColumnName("SNameTinhThanh");

            entity.HasOne(d => d.FkIdTypeNavigation).WithMany(p => p.TblTinhThanhs)
                .HasForeignKey(d => d.FkIdType)
                .HasConstraintName("FkIdTypeTinhThanh");
        });

        modelBuilder.Entity<TblTinhThanhComment>(entity =>
        {
            entity.HasKey(e => new { e.FkIdTinhThanh, e.FkIdDiaChi, e.FkIdComment }).HasName("PkTinhThanh_Comment");

            entity.ToTable("tblTinhThanh_Comment");

            entity.HasOne(d => d.FkIdCommentNavigation).WithMany(p => p.TblTinhThanhComments)
                .HasForeignKey(d => d.FkIdComment)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkComment_TinhThanh");

            entity.HasOne(d => d.FkIdDiaChiNavigation).WithMany(p => p.TblTinhThanhComments)
                .HasForeignKey(d => d.FkIdDiaChi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkDiaChi_TinhThanh");

            entity.HasOne(d => d.FkIdTinhThanhNavigation).WithMany(p => p.TblTinhThanhComments)
                .HasForeignKey(d => d.FkIdTinhThanh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkTinhThanh_Comment");

            entity.HasOne(d => d.FkIdYeuThichNavigation).WithMany(p => p.TblTinhThanhComments)
                .HasForeignKey(d => d.FkIdYeuThich)
                .HasConstraintName("FkYeuThich_TinhThanh");
        });

        modelBuilder.Entity<TblTinhThanhGiaiTri>(entity =>
        {
            entity.HasKey(e => new { e.FkIdTinhThanh, e.FkIdGiaiTri, e.FkIdDiaChi, e.FkIdComment }).HasName("PkTinhThanh_GiaiTri");

            entity.ToTable("tblTinhThanh_GiaiTri");

            entity.HasOne(d => d.FkIdCommentNavigation).WithMany(p => p.TblTinhThanhGiaiTris)
                .HasForeignKey(d => d.FkIdComment)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkComment_GiaiTri");

            entity.HasOne(d => d.FkIdDiaChiNavigation).WithMany(p => p.TblTinhThanhGiaiTris)
                .HasForeignKey(d => d.FkIdDiaChi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkDiaChi_GiaiTri");

            entity.HasOne(d => d.FkIdGiaiTriNavigation).WithMany(p => p.TblTinhThanhGiaiTris)
                .HasForeignKey(d => d.FkIdGiaiTri)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkGiaiTri");

            entity.HasOne(d => d.FkIdTinhThanhNavigation).WithMany(p => p.TblTinhThanhGiaiTris)
                .HasForeignKey(d => d.FkIdTinhThanh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkTinhThanh_GiaiTri");

            entity.HasOne(d => d.FkIdYeuThichNavigation).WithMany(p => p.TblTinhThanhGiaiTris)
                .HasForeignKey(d => d.FkIdYeuThich)
                .HasConstraintName("FkYeuThich_GiaiTri");
        });

        modelBuilder.Entity<TblTinhThanhKhachSan>(entity =>
        {
            entity.HasKey(e => new { e.FkIdTinhThanh, e.FkIdKhachSan, e.FkIdDiaChi, e.FkIdComment }).HasName("PkTinhThanh_KhachSan");

            entity.ToTable("tblTinhThanh_KhachSan");

            entity.HasOne(d => d.FkIdCommentNavigation).WithMany(p => p.TblTinhThanhKhachSans)
                .HasForeignKey(d => d.FkIdComment)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkComment_KhachSan");

            entity.HasOne(d => d.FkIdDiaChiNavigation).WithMany(p => p.TblTinhThanhKhachSans)
                .HasForeignKey(d => d.FkIdDiaChi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkDiaChi_KhachSan");

            entity.HasOne(d => d.FkIdKhachSanNavigation).WithMany(p => p.TblTinhThanhKhachSans)
                .HasForeignKey(d => d.FkIdKhachSan)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkKhachSan");

            entity.HasOne(d => d.FkIdTinhThanhNavigation).WithMany(p => p.TblTinhThanhKhachSans)
                .HasForeignKey(d => d.FkIdTinhThanh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkTinhThanh_KhachSan");

            entity.HasOne(d => d.FkIdYeuThichNavigation).WithMany(p => p.TblTinhThanhKhachSans)
                .HasForeignKey(d => d.FkIdYeuThich)
                .HasConstraintName("FkYeuThich_KhachSan");
        });

        modelBuilder.Entity<TblTinhThanhMonAn>(entity =>
        {
            entity.HasKey(e => new { e.FkIdTinhThanh, e.FkIdMonAn, e.FkIdDiaChi, e.FkIdComment }).HasName("PkTinhThanh_MonAn");

            entity.ToTable("tblTinhThanh_MonAn");

            entity.HasOne(d => d.FkIdCommentNavigation).WithMany(p => p.TblTinhThanhMonAns)
                .HasForeignKey(d => d.FkIdComment)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkComment_MonAn");

            entity.HasOne(d => d.FkIdDiaChiNavigation).WithMany(p => p.TblTinhThanhMonAns)
                .HasForeignKey(d => d.FkIdDiaChi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkDiaChi_MonAn");

            entity.HasOne(d => d.FkIdMonAnNavigation).WithMany(p => p.TblTinhThanhMonAns)
                .HasForeignKey(d => d.FkIdMonAn)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkMonAn");

            entity.HasOne(d => d.FkIdTinhThanhNavigation).WithMany(p => p.TblTinhThanhMonAns)
                .HasForeignKey(d => d.FkIdTinhThanh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkTinhThanh_MoAn");

            entity.HasOne(d => d.FkIdYeuThichNavigation).WithMany(p => p.TblTinhThanhMonAns)
                .HasForeignKey(d => d.FkIdYeuThich)
                .HasConstraintName("FkYeuThich_MonAn");
        });

        modelBuilder.Entity<TblTinhThanhNhaHang>(entity =>
        {
            entity.HasKey(e => new { e.FkIdTinhThanh, e.FkIdNhaHang, e.FkIdDiaChi, e.FkIdComment }).HasName("PkTinhThanh_NhaHang");

            entity.ToTable("tblTinhThanh_NhaHang");

            entity.HasOne(d => d.FkIdCommentNavigation).WithMany(p => p.TblTinhThanhNhaHangs)
                .HasForeignKey(d => d.FkIdComment)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkComment_NhaHang");

            entity.HasOne(d => d.FkIdDiaChiNavigation).WithMany(p => p.TblTinhThanhNhaHangs)
                .HasForeignKey(d => d.FkIdDiaChi)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkDiaChi_NhaHang");

            entity.HasOne(d => d.FkIdNhaHangNavigation).WithMany(p => p.TblTinhThanhNhaHangs)
                .HasForeignKey(d => d.FkIdNhaHang)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkNhaHang");

            entity.HasOne(d => d.FkIdTinhThanhNavigation).WithMany(p => p.TblTinhThanhNhaHangs)
                .HasForeignKey(d => d.FkIdTinhThanh)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FkTinhThanh_NhaHang");

            entity.HasOne(d => d.FkIdYeuThichNavigation).WithMany(p => p.TblTinhThanhNhaHangs)
                .HasForeignKey(d => d.FkIdYeuThich)
                .HasConstraintName("FkYeuThich_NhaHang");
        });

        modelBuilder.Entity<TblType>(entity =>
        {
            entity.HasKey(e => e.PkIdType).HasName("PkIdType_");

            entity.ToTable("tblType");

            entity.Property(e => e.SnameType)
                .HasMaxLength(100)
                .HasColumnName("SNameType");
        });

        modelBuilder.Entity<TblYeuThich>(entity =>
        {
            entity.HasKey(e => e.PkIdYeuThich).HasName("PkIdYeuThich_");

            entity.ToTable("tblYeuThich");

            entity.HasOne(d => d.FkIdTaiKhoanNavigation).WithMany(p => p.TblYeuThiches)
                .HasForeignKey(d => d.FkIdTaiKhoan)
                .HasConstraintName("FkIdYeuThich_TaiKhoan");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
