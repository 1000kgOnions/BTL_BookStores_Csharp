using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LaptrinhWeb_BanSach.Models
{
    public class Product
    {
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

    }
}