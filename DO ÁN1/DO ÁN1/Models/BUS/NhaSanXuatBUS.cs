using ShopMobileConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DO_ÁN1.Models.BUS
{
    public class NhaSanXuatBUS
    {
        //-----------------Khach Hàng
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<NhaSanXuat>("select * from NhaSanXuat where TinhTrang = 0");
        }
        
        public static IEnumerable<SanPham> ChiTiet(string id)
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<SanPham>("select * from SanPham where MaNhaSanXuat = '"+id+"'");
        }

        //--------------------------Admin
        public static void ThemNSX(NhaSanXuat nsx)
        {
            var db = new ShopMobileConnectionDB();
            db.Insert(nsx);
        }
        public static IEnumerable<NhaSanXuat> DanhSachAdmin()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<NhaSanXuat>("select * from NhaSanXuat ");
        }
        public static NhaSanXuat ChiTietAdmin( String id)
        {
            var db = new ShopMobileConnectionDB();
            return db.SingleOrDefault<NhaSanXuat>("select * from NhaSanXuat where MaNhaSanXuat = '" + id + "'");
        }
        public static void UpdateNSX(String id, NhaSanXuat nsx)
        {
            var db = new ShopMobileConnectionDB();
            db.Update(nsx, id);
        }

        internal static void UpdateNSX(object nsx, int id)
        {
            throw new NotImplementedException();
        }
    }
}