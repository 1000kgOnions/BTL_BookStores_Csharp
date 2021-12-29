using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
namespace BTL_LaptrinhWeb_BanSach.Models
{
    public partial class DangKy
    {
        [Display(Name = "Tên tài khoản")]
        [Required(ErrorMessage = "Vui lòng nhập tên tài khoản")]
        public string TenDN { get; set; }

        [Display(Name = "Mật khẩu")]
        [Required(ErrorMessage = "Vui lòng nhập mật khẩu")]
        [DataType(DataType.Password)]
        public string Matkhau { get; set; }

        [Display(Name = "Họ tên:")]
        public string HotenKH { get; set; }

        [Display(Name = "Địa chỉ:")]
        public string DiachiKH { get; set; }


        [Display(Name = "Số điện thoại:")]
        [Required(ErrorMessage = "Vui lòng nhập số điện thoại ")]
        [RegularExpression(@"^\d+$", ErrorMessage = "Chỉ được nhập số")]
        [DataType(DataType.PhoneNumber)]
        public string DienthoaiKH { get; set; }

        [Display(Name = "Ngày sinh")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public Nullable<System.DateTime> Ngaysinh { get; set; }

        [Display(Name = "Giới tính")]
        [Required(ErrorMessage = "Vui lòng nhập giới tính ")]
        public string Gioitinh { get; set; }
       
        [Display(Name = "Email")]
        [Required(ErrorMessage = "Vui lòng nhập email ")]
        [EmailAddress(ErrorMessage = "Vui lòng nhập email đúng")]
        public string Email { get; set; }
               
        [Display(Name = "Quyền")]
        public Nullable<int> Quyen { get; set; }
    }
}