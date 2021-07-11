using DO_ÁN1.Models.BUS;
using ShopMobileConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DO_ÁN1.Areas.Admin.Controllers
{
    public class LoaiSanPhamAdminController : Controller
    {
        // GET: Admin/LoaiSanPhamAdmin
        public ActionResult Index()
        {
            var db = LoaiSanPhamBUS.DanhSachAdmin();
            return View(db);
        }

        // GET: Admin/LoaiSanPhamAdmin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/LoaiSanPhamAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LoaiSanPhamAdmin/Create
        [HttpPost]
        public ActionResult Create(LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add insert logic here
                LoaiSanPhamBUS.InsertLSP(lsp);
                return RedirectToAction("Index");
            }
            catch
            { 
                return View();
            }
        }

        // GET: Admin/LoaiSanPhamAdmin/Edit/5
        public ActionResult Edit(string id)
        {
            // load db theo id
            var db = LoaiSanPhamBUS.ChiTietAdmin(id);
            return View(db);
        }

        // POST: Admin/LoaiSanPhamAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add update logic here
                LoaiSanPhamBUS.EditLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        //-------- Xoa Tam Thoi
        public ActionResult XoaTamThoi(String id)
        {
            var db = LoaiSanPhamBUS.ChiTietAdmin(id);
            return View(db);
            
        }

        // POST: Admin/LoaiSanPhamAdmin/Delete/5
        [HttpPost]
        public ActionResult XoaTamThoi(string id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add delete logic here
                lsp.TinhTrang = "1";
                LoaiSanPhamBUS.EditLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/LoaiSanPhamAdmin/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/LoaiSanPhamAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
