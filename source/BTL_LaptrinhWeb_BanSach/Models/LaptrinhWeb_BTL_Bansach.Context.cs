﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BTL_LaptrinhWeb_BanSach.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LaptrinhWeb_BTL_BansachEntities : DbContext
    {
        public LaptrinhWeb_BTL_BansachEntities()
            : base("name=LaptrinhWeb_BTL_BansachEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<chitietgiohang> chitietgiohangs { get; set; }
        public DbSet<chude> chudes { get; set; }
        public DbSet<giohang> giohangs { get; set; }
        public DbSet<khachhang> khachhangs { get; set; }
        public DbSet<nhaxuatban> nhaxuatbans { get; set; }
        public DbSet<sach> saches { get; set; }
    }
}