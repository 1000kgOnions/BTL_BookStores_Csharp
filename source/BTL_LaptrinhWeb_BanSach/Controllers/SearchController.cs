using BTL_LaptrinhWeb_BanSach.Models;
using BTL_LaptrinhWeb_BanSach.Models1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace BTL_LaptrinhWeb_BanSach.Controllers
{
    public class SearchController : ApiController
    {
        DataProductContextDataContext context = new DataProductContextDataContext();

        [HttpGet]
        public IEnumerable<Product> GetAllUser()
        {
            IList<Product> prodsList = new List<Product>();
            var query = (from prods in context.saches select prods).ToList();
            foreach (var item in query)
            {
                prodsList.Add(new Product
                {
                   Masach = item.Masach,
                   Tensach = item.Tensach,
                   Dongia = item.Dongia,
                   Donvitinh = item.Donvitinh,
                   Mota = item.Mota,
                   Hinhminhhoa = item.Hinhminhhoa,
                   Ngaycapnhat = item.Ngaycapnhat,
                   Soluongban = item.Soluongban,
                   Solanxem = item.Solanxem,
                   tentacgia = item.tentacgia,
                   MaCD = item.MaCD,
                   MaNXB = item.MaNXB
                });
            }
            return prodsList;
        }

        [HttpGet]
        public IEnumerable<Product> SearchID(string searchKey)
        {
            IList<Product> prodsList = new List<Product>();
            List<Models1.sach> query;
            if (searchKey != null)
                query = (from prods in context.saches
                         where prods.Masach.Contains(searchKey) || prods.Tensach.Contains(searchKey) || prods.tentacgia.Contains(searchKey)
                         select prods).ToList();
            else query = (from s in context.saches select s).ToList();
            foreach (var item in query)
            {
                prodsList.Add(new Product
                {
                    Masach = item.Masach,
                    Tensach = item.Tensach,
                    Dongia = item.Dongia,
                    Donvitinh = item.Donvitinh,
                    Mota = item.Mota,
                    Hinhminhhoa = item.Hinhminhhoa,
                    Ngaycapnhat = item.Ngaycapnhat,
                    Soluongban = item.Soluongban,
                    Solanxem = item.Solanxem,
                    tentacgia = item.tentacgia,
                    MaCD = item.MaCD,
                    MaNXB = item.MaNXB
                });
            }
            return prodsList;
        }
    }
}

