using ShopMobileConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DO_ÁN1.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<SanPham>("select * from SanPham where TinhTrang = 0");   
        }

        public static SanPham ChiTiet(string a)
        {
            var db = new ShopMobileConnectionDB();
             return db.SingleOrDefault<SanPham>("select * from SanPham where MaSanPham = @0",a);
        }
        public static IEnumerable<SanPham> Top4New()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham where GhiChu = N'New'");
        }

        public static IEnumerable<SanPham> TopHot()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham Where LuotView > 0 ");
        }

    }
}