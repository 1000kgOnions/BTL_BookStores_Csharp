using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LaptrinhWeb_BanSach.Areas.Admin.Code
{
    [Serializable] //đưa thành chuỗi nhị phâm
    public class UserSession
    {
        public string UserName { get; set; }
    }
}