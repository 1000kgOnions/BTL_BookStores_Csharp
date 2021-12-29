using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LaptrinhWeb_BanSach.Models
{
    [Serializable]
    public class CartItem
    {
        public sach Product { get; set; }
        public int Quantity { get; set; }
    }
}