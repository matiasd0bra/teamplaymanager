using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.Models;
using TPM.Repositorio;

namespace TPM.Controllers
{
    public class JugadorController : Controller
    {
        //
        // GET: /Jugador/

        public ActionResult Index()
        {
            List<Jugador> jugadores = JugadoresRepo.JugadoresGetAllRepo();
            return View(jugadores);
        }

        //
        // GET: /Jugador/Details/5

        public ActionResult Details(int id)
        {
            Jugador jugador = JugadoresRepo.JugadorByIdRepo(id);
            return View(jugador);
        }

        //
        // GET: /Jugador/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Jugador/Create

        [HttpPost]
        public ActionResult Create(Jugador jugador)
        {
            try
            {
                JugadoresRepo.JugadorInsert(jugador);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Jugador/Edit/5

        public ActionResult Edit(int id)
        {
            Jugador jugador = JugadoresRepo.JugadorByIdRepo(id);
            return View(jugador);
        }

        //
        // POST: /Jugador/Edit/5

        [HttpPost]
        public ActionResult Edit(Jugador jugador)
        {
            try
            {

                JugadoresRepo.JugadorUpdate(jugador);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Jugador/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Jugador/Delete/5

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
