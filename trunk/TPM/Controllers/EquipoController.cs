using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.Models;
using TPM.Repositorio;

namespace TPM.Controllers
{
    public class EquipoController : Controller
    {
        //
        // GET: /Equipo/

        public ActionResult Index()
        {
            List<Equipo> equipos = EquiposRepo.EquiposGetAllRepo();
            return View(equipos);
        }

        //
        // GET: /Equipo/Details/5

        public ActionResult Details(int id)
        {
            Equipo equipo = EquiposRepo.EquipoByIdRepo(id);
            return View(equipo);
        }

        //
        // GET: /Equipo/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Equipo/Create

        [HttpPost]
        public ActionResult Create(Equipo equipo)
        {
            try
            {
                EquiposRepo.EquipoInsert(equipo);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Equipo/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Equipo/Edit/5

        [HttpPost]
        public ActionResult Edit(Equipo equipo)
        {
            try
            {
                EquiposRepo.EquipoUpdate(equipo);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Equipo/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Equipo/Delete/5

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
