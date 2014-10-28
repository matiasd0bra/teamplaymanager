using System;
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
            foreach (var item in equipos)
            {
                item.CategoriaLista = CategoriaRepo.CategoriaByEquipo(item.Id);
                foreach (var item2 in item.CategoriaLista)
                {
                    item.CategoriasString += item2.NombreCategoria;
                    if (item2 != item.CategoriaLista[item.CategoriaLista.Count - 1])
                    {
                        item.CategoriasString += " - ";
                    }
                }
            }      
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

                equipo.NombreEquipo = divisionNombre + " " + ligaNombre;


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

        public ActionResult AssignarJugadores(int id, string NombreFiltro = null, string ApellidoFiltro = null)
        {
            var assignarJugadoresViewModel = new AssignarJugadoresViewModel();
            assignarJugadoresViewModel.EquipoSeleccionado = EquiposRepo.EquipoByIdRepo(id);
            assignarJugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaGetAllRepo();
            assignarJugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresSearch(id, NombreFiltro, ApellidoFiltro);
            assignarJugadoresViewModel.Equipos = EquiposRepo.EquiposGetAllRepo();
            assignarJugadoresViewModel.ListaJugadoresAsignados = JugadoresRepo.JugadoresByEquipo(id);
            assignarJugadoresViewModel.NombreFiltro = NombreFiltro;

            return View(assignarJugadoresViewModel);
        }

        [HttpPost]
        public JsonResult AssignarJug(JugadoresAsignados jugadorAsignado)
        {
            Jugador jugador = new Jugador();
            jugador.Id = jugadorAsignado.IdJugador;
            jugador.EquipoId = jugadorAsignado.IdEquipo;
            jugador.FechaDesdeEquipo = DateTime.Now;

            JugadoresRepo.JugadorPorEquipoInsert(jugador);


            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult BorrarJugEquipo(JugadoresAsignados jugadorEliminar)
        {
            Jugador jugador = new Jugador();
            jugador.Id = jugadorEliminar.IdJugador;
            jugador.EquipoId = jugadorEliminar.IdEquipo;
            jugador.FechaHastaEquipo = DateTime.Now;

            JugadoresRepo.JugadorPorEquipoDelete(jugador);

            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult AsignarPersonalEsp(int id, string NombreFiltro = null, string ApellidoFiltro = null)
        {
            var asignarPersonal = new AsignarPersonalEspViewModel();
            asignarPersonal.EquipoSeleccionado = EquiposRepo.EquipoByIdRepo(id);
            asignarPersonal.ListaPersonalEsp = PersonalEspRepo.PersonalSearch(id, NombreFiltro, ApellidoFiltro);
            asignarPersonal.ListaPersonalEspsAsignados = PersonalEspRepo.PersonalByEquipo(id);
            asignarPersonal.NombreFiltro = NombreFiltro;

            return View(asignarPersonal);
        }

        [HttpPost]
        public JsonResult AsignarPersonal(PersonalEspAsignados personalEspAsignados)
        {
            PersonalEsp personal = new PersonalEsp();
            personal.Id = personalEspAsignados.IdPersonalEsp;
            personal.EquipoId = personalEspAsignados.IdEquipo;

            PersonalEspRepo.PersonalEspPorEquipoInsert(personal);


            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult BorrarPersonalEquipo(PersonalEspAsignados personalEspEliminar)
        {
            PersonalEsp personal = new PersonalEsp();
            personal.Id = personalEspEliminar.IdPersonalEsp;
            personal.EquipoId = personalEspEliminar.IdEquipo;

            PersonalEspRepo.PersonalEspPorEquipoDelete(personal);

            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }
    }
}
