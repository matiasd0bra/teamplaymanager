﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls.WebParts;
using Antlr.Runtime;
using TPM.Models;
using TPM.Models.ViewModel;
using TPM.Repositorio;

namespace TPM.Controllers
{
    public class PartidoController : Controller
    {
        public ActionResult Index()
        {
            Partido partido = new Partido();
            partido.TemporadasList = TemporadasRepo.TemporadasGetAllRepo();
            partido.EquiposList = EquiposRepo.EquiposGetAllRepo();
            partido.listPartidosSinDatos = PartidoRepo.getPartidosSinDatos() ;
            return View(partido);
        }

        [HttpPost]
        public ActionResult Index(Partido partido)
        {
            try
            {
                //partido.EquipoId
                //partido.TemporadaId

                return View();
            }
            catch
            {
                return View();
            }
        }

        public ActionResult Create()
        {
            Partido partido = new Partido();
            partido.EquiposList = EquiposRepo.EquiposGetAllRepo();
            partido.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            partido.TemporadasList = TemporadasRepo.TemporadasGetAllRepo();

            partido.JugadoresViewModel = new AssignarJugadoresViewModel();

            partido.JugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaGetAllRepo();
            //partido.JugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresPartidoSearch(NombreFiltro, ApellidoFiltro, CategoriaFiltro); //NO CONVOCADOS
            //partido.JugadoresViewModel.ListaJugadoresAsignados = JugadoresRepo.JugadoresByEquipo(0); //CONVOCADOS
            //partido.JugadoresViewModel.NombreFiltro = NombreFiltro;

            partido.JugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresGetAllRepo("");
            partido.PartidoId = -1;

            return View(partido);
        }

        //
        // POST: /Jugador/Create
        [HttpPost]
        public ActionResult Create(Partido partido, string accion)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    partido.FechaHoraInicio = DateTime.Parse(partido.FechaHoraInicioString);
                    partido.PartidoId = PartidoRepo.PartidoInsert(partido);

                    if (accion == "Guardar y volver al calendario") return RedirectToAction("Index");
                    if (accion == "Guardar y convocar Jugadores")
                    {
                        return RedirectToAction("ConvocarJugadores", new { id = partido.PartidoId });
                    }
                }
                catch
                {
                    return View();
                }
            }
            partido.JugadoresViewModel = new AssignarJugadoresViewModel();
            partido.EquiposList = EquiposRepo.EquiposGetAllRepo();
            partido.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            partido.TemporadasList = TemporadasRepo.TemporadasGetAllRepo();
            partido.JugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresGetAllRepo("");
            partido.PartidoId = -1;
            return View(partido);
        }

        public ActionResult ConvocarJugadores(int id, string NombreFiltro = null, string ApellidoFiltro = null, string CategoriaFiltro = null)
        {
            var assignarJugadoresViewModel = new AssignarJugadoresViewModel();
            assignarJugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaGetAllRepo();
            assignarJugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresSearchPartido(id, NombreFiltro, ApellidoFiltro);
            assignarJugadoresViewModel.PartidoSeleccionado = PartidoRepo.PartidoByIdRepo(id);
            assignarJugadoresViewModel.ListaJugadoresAsignados = JugadoresRepo.JugadoresByPartido(id);
            assignarJugadoresViewModel.NombreFiltro = NombreFiltro;

            return View(assignarJugadoresViewModel);
        }

        public JsonResult ConvocarJugador(JugadoresAsignados jugadorAsignado)
        {
            Jugador jugador = new Jugador();
            jugador.Id = jugadorAsignado.IdJugador;
            jugador.PartidoId = jugadorAsignado.IdPartido;

            JugadoresRepo.JugadorPorPartidoInsert(jugador);


            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult BorrarJugadorConvocado(JugadoresAsignados jugadorEliminar)
        {
            Jugador jugador = new Jugador();
            jugador.Id = jugadorEliminar.IdJugador;
            jugador.PartidoId = jugadorEliminar.IdPartido;

            JugadoresRepo.JugadorPorPartidoDelete(jugador);

            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }
    }
}