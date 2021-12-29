using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BTL_LaptrinhWeb_BanSach.Models;
namespace BTL_LaptrinhWeb_BanSach.Areas.Admin.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin/Admin
        LaptrinhWeb_BTL_BansachEntities db = new LaptrinhWeb_BTL_BansachEntities();

        //Sản phẩm
        public ActionResult ListProduct()
        {
           
            return View(db.saches.ToList());
        }
        [HttpGet]
        public ActionResult CreateP()
        {
            ViewBag.MaCD = new SelectList(db.chudes.ToList().OrderBy(n => n.Tenchude), "MaCD", "Tenchude");
            ViewBag.MaNXB = new SelectList(db.nhaxuatbans.ToList().OrderBy(n => n.TenNXB), "MaNXB", "TenNXB");
            int c = db.saches.Count() + 3;
            ViewBag.idsach = Convert.ToString(c);
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateP(sach sach)
        {
            if (ModelState.IsValid)
            {
                db.saches.Add(sach);
                db.SaveChanges();
                return RedirectToAction("ListProduct");
            }
            return View(sach);
        }

        public ActionResult EditP(string Masach)
        {
            if (Masach == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            sach s = db.saches.Find(Masach);
            if (s == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaCD = new SelectList(db.chudes.ToList().OrderBy(n => n.Tenchude), "MaCD", "Tenchude");
            ViewBag.MaNXB = new SelectList(db.nhaxuatbans.ToList().OrderBy(n => n.TenNXB), "MaNXB", "TenNXB");
            return View(s);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditP(sach s)
        {
            if (ModelState.IsValid)
            {
                db.Entry(s).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ListProduct");
            }
            return RedirectToAction("ListProduct");
        }

        public ActionResult DeleteP(string Masach)
        {
            sach sp = db.saches.SingleOrDefault(n => n.Masach == Masach);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);
        }
        [HttpPost, ActionName("DeleteP")]
        public ActionResult AcpDeleteP(string Masach)
        {
            sach sp = db.saches.SingleOrDefault(n => n.Masach == Masach);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            var ctgh = from p in db.chitietgiohangs
                       where p.Masach == sp.Masach
                       select p;
         
            db.saches.Remove(sp);
            db.chitietgiohangs.RemoveRange(ctgh);
            db.SaveChanges();         
            return RedirectToAction("ListProduct");
        }

        //Người dùng
        public ActionResult ListUser()
        {
            return View(db.khachhangs.ToList());
        }

        [HttpGet]
        public ActionResult CreateU()
        {
                    
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult CreateU(khachhang u)
        {
            if (ModelState.IsValid)
            {
                db.khachhangs.Add(u);
                db.SaveChanges();
                return RedirectToAction("ListUser");
            }
            return View(u);
        }

        public ActionResult EditU(string TenDN)
        {
            if (TenDN == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            khachhang kh = db.khachhangs.Find(TenDN);
            if (kh == null)
            {
                return HttpNotFound();
            }
            return View(kh);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult EditU(khachhang kh)
        {
            if (ModelState.IsValid)
            {
                db.Entry(kh).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("ListUser");
            }
            return RedirectToAction("ListUser");
        }

        public ActionResult DeleteU(string TenDN)
        {
            khachhang kh = db.khachhangs.SingleOrDefault(n => n.TenDN == TenDN);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(kh);
        }
        [HttpPost, ActionName("DeleteU")]
        public ActionResult AcpDeleteU(string TenDN)
        {
            khachhang kh = db.khachhangs.SingleOrDefault(n => n.TenDN == TenDN);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
          
            db.khachhangs.Remove(kh);
            db.SaveChanges();
            return RedirectToAction("ListUser");

        }

        //Giỏ hàng
        
        public ActionResult ListCart()
        {
            ViewBag.pingCart = "DANH SÁCH GIỎ HÀNG";
            if (db.giohangs.ToList().Count <= 0)
                ViewBag.pingCart = "Hiện không có danh sách giỏ hàng nào";

            return View(db.giohangs.ToList());
        }

        public ActionResult ViewDetailCart(string id)
        {
            List<chitietgiohang> ctgh = db.chitietgiohangs.Where(x => x.MaGiohang == id).OrderBy(x => x.MaGiohang).ToList();
            if (ctgh.Count == 0)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ctgh);       
        }
    }
}