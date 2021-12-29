using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Net;
using System.Data.Entity;
using BTL_LaptrinhWeb_BanSach.Models;
using PagedList;
using PagedList.Mvc;
using BTL_LaptrinhWeb_BanSach.Areas.Admin.Code;

namespace BTL_LaptrinhWeb_BanSach.Controllers
{
    public class BookStoresController : Controller
    {
        public static string pageNXB;
        // GET: BookStores
        LaptrinhWeb_BTL_BansachEntities db = new LaptrinhWeb_BTL_BansachEntities();
        public ActionResult Index(int? page)
        {
            int pagesize = 6;
            int pageNumber = (page ?? 1);

            var slb = (from sach in db.saches
                       orderby sach.Soluongban descending
                       select sach).Take(10).ToList();
            //List<sach> lcdsach = db.saches.Where(x => x.Soluongban == slb).OrderBy(x => x.Soluongban).ToList();
            //if (lcdsach.Count == 0)
            //{
            //    ViewBag.SanPham = "Không có sách nào thuộc chủ đề này";
            //}
            //ViewBag.lcdsach = db.saches.ToList();
            //return View(lcdsach);
            return View(slb.ToPagedList(pageNumber, pagesize));

            //return View();
        }
        public PartialViewResult ChuDePartial()
        {
            return PartialView(db.chudes.ToList());
        }
        public ViewResult SachtheoChude(int? page, string MaCD = "1")
        {
            int pagesize = 6;
            int pageNumber = (page ?? 1);
            chude lsp = db.chudes.SingleOrDefault(x => x.MaCD == MaCD);
            if (lsp == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            List<sach> lcdsach = db.saches.Where(x => x.MaCD == MaCD).OrderBy(x => x.MaCD).ToList();
            if (lcdsach.Count == 0)
            {
                ViewBag.SanPham = "Không có sách nào thuộc chủ đề này";
            }
            //ViewBag.lcdsach = db.saches.ToList();
            //return View(lcdsach);
            ViewBag.MaCD = MaCD;
            ViewBag.TenChuDe = lsp.Tenchude;
            return View(db.saches.Where(n => n.MaCD == MaCD).OrderBy(n => n.Tensach).ToList().ToPagedList(pageNumber, pagesize));

        }
        public PartialViewResult NXBPartial()
        {
            return PartialView(db.nhaxuatbans.ToList());
        }

        public ViewResult SachtheoNXB(int? page, string MaNXB = "1")
        {
            int pagesize = 6;
            int pageNumber = (page ?? 1);
            nhaxuatban snxb = db.nhaxuatbans.SingleOrDefault(x => x.MaNXB == MaNXB);
            if (snxb == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<sach> lxnbsach = db.saches.Where(x => x.MaNXB == MaNXB).OrderBy(x => x.MaNXB).ToList();
            if (lxnbsach.Count == 0)
            {
                ViewBag.SanPham = "Không có sách nào thuộc nhà xuất bản này";
            }
            //ViewBag.lcdsach = db.saches.ToList
            //return View(lcdsach);
            ViewBag.MaNXB = MaNXB;
            ViewBag.TenNXB = snxb.TenNXB;
            return View(db.saches.Where(n => n.MaNXB == MaNXB).OrderBy(n => n.Tensach).ToList().ToPagedList(pageNumber, pagesize));


        }
        public ViewResult XemChiTiet(string Masach)
        {
            sach sach = db.saches.SingleOrDefault(n => n.Masach == Masach);
            if (sach == null)
            {
                return null;
            }
            return View(sach);
        }

        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangKy([Bind(Include = "TenDN,Matkhau,HotenKH,DiachiKH,DienthoaiKH,Ngaysinh,Gioitinh,Email,Quyen")] DangKy dk)
        {
            if (ModelState.IsValid)
            {
                khachhang user = new khachhang();
                user.TenDN = dk.TenDN;
                user.Matkhau = dk.Matkhau;
                user.HotenKH = dk.HotenKH;
                user.DiachiKH = dk.DiachiKH;
                user.DienthoaiKH = dk.DienthoaiKH;
                user.Ngaysinh = dk.Ngaysinh;
                user.Gioitinh = dk.Gioitinh;
                user.Quyen = 2;
                user.Email = dk.Email;
                db.khachhangs.Add(user);
                db.SaveChanges();
                SessionHelper.SetSession(new UserSession { UserName = user.TenDN });
                Static.nameLogin = SessionHelper.GetSession().UserName;
                Static.phien = true;
                return RedirectToAction("Index");
            }
            return View(dk);
        }
    }
}