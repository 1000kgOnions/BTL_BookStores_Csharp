//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class sach
    {
        public sach()
        {
            this.chitietgiohangs = new HashSet<chitietgiohang>();
        }
    
        public string Masach { get; set; }
        public string Tensach { get; set; }
        public Nullable<double> Dongia { get; set; }
        public string Donvitinh { get; set; }
        public string Mota { get; set; }
        public string Hinhminhhoa { get; set; }
        public Nullable<System.DateTime> Ngaycapnhat { get; set; }
        public Nullable<int> Soluongban { get; set; }
        public Nullable<int> Solanxem { get; set; }
        public string tentacgia { get; set; }
        public string MaCD { get; set; }
        public string MaNXB { get; set; }
    
        public virtual ICollection<chitietgiohang> chitietgiohangs { get; set; }
        public virtual chude chude { get; set; }
        public virtual nhaxuatban nhaxuatban { get; set; }
    }
}
