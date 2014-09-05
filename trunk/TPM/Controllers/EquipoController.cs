﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.Models;
using TPM.Models.ViewModel;
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
            Equipo equipo = new Equipo();
            equipo.CategoriaLista = CategoriaRepo.CategoriaGetAllRepo();
            equipo.DivisionLista = DivisionesRepo.DivisionGetAllRepo();
            equipo.LigaLista = LigaRepo.LigaGetAllRepo();
            return View(equipo);
        }

        //
        // POST: /Equipo/Create

        [HttpPost]
        public ActionResult Create(Equipo equipo)
        {
            try
            {
                string divisionNombre = DivisionesRepo.DivisionByIdRepo(equipo.DivisionId).NombreDivision;
                string ligaNombre = LigaRepo.LigaByIdRepo(equipo.LigaId).NombreLiga;
                string categoriaNombre = CategoriaRepo.categoriaByIdRepo(equipo.CategoriaId).NombreCategoria;

                equipo.NombreEquipo = divisionNombre + " " + ligaNombre + " " + categoriaNombre;


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
            Equipo equipo = EquiposRepo.EquipoByIdRepo(id);
            equipo.CategoriaLista = CategoriaRepo.CategoriaGetAllRepo();
            equipo.DivisionLista = DivisionesRepo.DivisionGetAllRepo();
            equipo.LigaLista = LigaRepo.LigaGetAllRepo();
            return View(equipo);
        }

        //
        // POST: /Equipo/Edit/5

        [HttpPost]
        public ActionResult Edit(Equipo equipo)
        {
            try
            {
                string divisionNombre = DivisionesRepo.DivisionByIdRepo(equipo.DivisionId).NombreDivision;
                string ligaNombre = LigaRepo.LigaByIdRepo(equipo.LigaId).NombreLiga;
                string categoriaNombre = CategoriaRepo.categoriaByIdRepo(equipo.CategoriaId).NombreCategoria;
                equipo.NombreEquipo = divisionNombre + " " + ligaNombre + " " + categoriaNombre;

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

        public ActionResult AssignarJugadores(int id, string NombreFiltro = null, string ApellidoFiltro = null, int page = 0)
        {
            var assignarJugadoresViewModel = new AssignarJugadoresViewModel();
            assignarJugadoresViewModel.EquipoSeleccionado = EquiposRepo.EquipoByIdRepo(id);
            assignarJugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaGetAllRepo();
            assignarJugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresSearch(id, NombreFiltro, ApellidoFiltro);
            assignarJugadoresViewModel.Equipos = EquiposRepo.EquiposGetAllRepo();
            assignarJugadoresViewModel.JugadoresAsignados = JugadoresRepo.JugadoresByEquipo(id);

            assignarJugadoresViewModel.obtenerPaginaJugadoresFiltrados(page, '2', id, NombreFiltro, ApellidoFiltro);

            return View(assignarJugadoresViewModel);
        }

        [HttpPost]
        public JsonResult AssignarJug(JugadoresAsignados jugadoresAsignados)
        {
            foreach(var item in jugadoresAsignados.listJug)
            {
                Jugador jugador = new Jugador();
                jugador.Id = item.Id;
                jugador.EquipoId = jugadoresAsignados.IdEquipo;

                JugadoresRepo.JugadorPorEquipoInsert(jugador);
            }


            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult BorrarJugEquipo(JugadorPorEquipoEliminar jugadorEliminar)
        {

            foreach (var item in jugadorEliminar.listJug)
            {
                Jugador jugador = new Jugador();
                jugador.Id = item.Id;
                jugador.EquipoId = jugadorEliminar.IdEquipo;

                JugadoresRepo.JugadorPorEquipoDelete(jugador);
            }

            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AsignarPersonalEsp (int id)
        {
            var asignarPersonalEspViewModel = new AsignarPersonalEspViewModel ();
            asignarPersonalEspViewModel.ListaPersonalEsp = PersonalEspRepo.PersonalEspesGetAllRepo();
            asignarPersonalEspViewModel.Equipos = EquiposRepo.EquiposGetAllRepo();
            asignarPersonalEspViewModel.EquipoSeleccionado = EquiposRepo.EquipoByIdRepo(id);

            return View(asignarPersonalEspViewModel);
        }

        [HttpPost]
        public ActionResult AssignarPersonalEsp(List<PersonalEsp> PersonalEspAsignados)
        {
            


            return View();
        }
    }
}