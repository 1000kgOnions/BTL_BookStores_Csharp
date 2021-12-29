using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTL_LaptrinhWeb_BanSach.Areas.Admin.Data;
using BTL_LaptrinhWeb_BanSach.Areas.Admin.Code;
using BTL_LaptrinhWeb_BanSach.Models;
namespace BTL_LaptrinhWeb_BanSach.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult IndexLogin()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult IndexLogin(LoginModel model)
        {
            using (LaptrinhWeb_BTL_BansachEntities _context = new LaptrinhWeb_BTL_BansachEntities())
            {

                ViewBag.ErrU = "";
                ViewBag.ErrP = "";

                var user = _context.khachhangs
                    .Where(t => t.TenDN == model.UserName).FirstOrDefault();
                if (user == null)
                {
                    ViewBag.ErrU = "Không tồn tại tài khoản";
                    return View(model);
                }
                else if (user.Matkhau != model.PassWord)
                {
                    ViewBag.ErrP = "Sai mật khẩu";
                    return View(model);
                }
                else if (user.Quyen.ToString() == "1")
                {
                    SessionHelper.SetSession(new Code.UserSession { UserName = user.TenDN });
                    Static.nameLogin = SessionHelper.GetSession().UserName;
                    return RedirectToAction("ListProduct", "Admin");
                }
                else
                {
                    SessionHelper.SetSession(new Code.UserSession { UserName = user.TenDN });
                    Static.nameLogin = SessionHelper.GetSession().UserName;
                    Static.phien = true;
                    var cart = Session["CartSession"];
                    if (cart != null)
                    { return RedirectToAction("Index", "Cart", new { area = "" }); }
                
                    return RedirectToAction("Index", "BookStores", new { area = "" });


                }
                //return View(model);
            }
        }
        public ActionResult Logout()
        {
            Session["loginSession"] = null;//remove session
            Static.nameLogin = null;
            if (Static.phien == true)
            {
                Static.phien = false;
                return RedirectToAction("Index", "BookStores", new { area = "" });
            }
            return RedirectToAction("IndexLogin");
        }


    }
}