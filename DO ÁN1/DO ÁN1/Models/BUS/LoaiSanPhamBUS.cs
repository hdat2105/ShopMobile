using ShopMobileConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DO_ÁN1.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        //----------Khach Hàng
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham where TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ChiTiet( string id)
        { 
            var db = new ShopMobileConnectionDB();
            return db.Query<SanPham>("select * from SanPham where MaLoaiSanPham = '" + id+"'");
        }
        //--------------Admin
        public static IEnumerable<LoaiSanPham> DanhSachAdmin()
        {
            var db = new ShopMobileConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham ");
        }
        public static void InsertLSP(LoaiSanPham lsp)
        {
            var db = new ShopMobileConnectionDB();
            db.Insert(lsp);
        }
        public static LoaiSanPham ChiTietAdmin(string id)
        {
            var db = new ShopMobileConnectionDB();
            return db.SingleOrDefault<LoaiSanPham>("select * from SanPham where MaLoaiSanPham = '" + id + "'");
        }
        
        public static void EditLSP(string id, LoaiSanPham lsp)
        {
            var db = new ShopMobileConnectionDB();
            db.Update(id, lsp);
        }
        public static void DeleteLSP(string id, LoaiSanPham lsp)
        {
            var db = new ShopMobileConnectionDB();
            db.Update(id, lsp);
        }
    }
}