﻿using System.Web;
using System.Web.Mvc;

namespace BTL_LaptrinhWeb_BanSach
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
