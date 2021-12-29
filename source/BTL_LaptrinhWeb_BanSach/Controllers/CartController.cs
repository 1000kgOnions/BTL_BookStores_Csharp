using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_LaptrinhWeb_BanSach.Models;
using System.Web.Script.Serialization;
using BTL_LaptrinhWeb_BanSach.Areas.Admin.Code;
namespace BTL_LaptrinhWeb_BanSach.Controllers
{
    public class CartController : Controller
    {
        private const string CartSession = "CartSession";
        LaptrinhWeb_BTL_BansachEntities db = new LaptrinhWeb_BTL_BansachEntities();
        // GET: Cart
        public ActionResult Index()
        {
            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return View(list);
        }

        public JsonResult DeleteAll()
        {
            Session[CartSession] = null;
            return Json(new
            {
                status = true
            });
        }

        public JsonResult Delete(string id)
        {
            var sessionCart = (List<CartItem>)Session[CartSession];
            sessionCart.RemoveAll(x => x.Product.Masach == id);
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public JsonResult Update(string cartModel)
        {
            var jsonCart = new JavaScriptSerializer().Deserialize<List<CartItem>>(cartModel);
            var sessionCart = (List<CartItem>)Session[CartSession];

            foreach (var item in sessionCart)
            {
                var jsonItem = jsonCart.SingleOrDefault(x => x.Product.Masach == item.Product.Masach);
                if (jsonItem != null)
                {                   
                        item.Quantity = jsonItem.Quantity;                   
                }
                if (item.Quantity == 0)
                {
                    sessionCart.RemoveAll(x => x.Product.Masach == item.Product.Masach);                
                    break;
                }
            }          
            Session[CartSession] = sessionCart;
            return Json(new
            {
                status = true
            });
        }
        public ActionResult AddItem(string productId, int quantity)
        {
            var product = db.saches.Find(productId);
            var cart = Session[CartSession];
            if (cart != null)
            {
                var list = (List<CartItem>)cart;
                if (list.Exists(x => x.Product.Masach == productId))
                {

                    foreach (var item in list)
                    {
                        if (item.Product.Masach == productId)
                        {
                            item.Quantity += quantity;
                        }
                    }
                }
                else
                {
                    //tạo mới đối tượng cart item
                    var item = new CartItem();
                    item.Product = product;
                    item.Quantity = quantity;
                    list.Add(item);
                }
                //Gán vào session
                Session[CartSession] = list;
            }
            else
            {
                //tạo mới đối tượng cart item
                var item = new CartItem();
                item.Product = product;
                item.Quantity = quantity;
                var list = new List<CartItem>();
                list.Add(item);
                //Gán vào session
                Session[CartSession] = list;
            }
            return RedirectToAction("Index");
        }


        [HttpGet]
        public ActionResult Payment()
        {
            ViewBag.payfault = "";
            if (Static.nameLogin == null)
            {
                return RedirectToAction("IndexLogin", "Login", new { area = "Admin" });
            }
            else
            {
                try
                {
                    var c = new giohang();                 
                    c.TenDN = Static.nameLogin;
                    string ma = (db.giohangs.Count() + 1).ToString();
                    c.MaGiohang = ma;
                    c.ngaymua = DateTime.Now;
                    db.giohangs.Add(c);
                    db.SaveChanges();
                    var cart = (List<CartItem>)Session[CartSession];
                    foreach (var item in cart)
                    {
                        var ctgh = new chitietgiohang();
                        ctgh.MaGiohang = c.MaGiohang;
                        ctgh.Masach = item.Product.Masach;                     
                        ctgh.Dongia = item.Product.Dongia;
                        ctgh.Soluong = item.Quantity;
                        db.chitietgiohangs.Add(ctgh);
                        db.SaveChanges();
                    }
                    Session[CartSession] = null;
                    return View("Payment");
                }
                catch
                {
                    ViewBag.payfault = "Thanh toán thất bại";
                    return RedirectToAction("Index");
                }
            }

        }
  
        public PartialViewResult HeaderCart()
        {
            var cart = Session[CartSession];
            var list = new List<CartItem>();
            if (cart != null)
            {
                list = (List<CartItem>)cart;
            }
            return PartialView(list);
        }
    }

}