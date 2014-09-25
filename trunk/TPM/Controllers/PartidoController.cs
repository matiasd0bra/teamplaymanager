using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls.WebParts;
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

        public ActionResult Create( string NombreFiltro = null, string ApellidoFiltro = null, string CategoriaFiltro = null)
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
        public ActionResult Create(Partido partido)
        {
            try
            {
                try
                {
                    partido.FechaHoraInicio = DateTime.Parse(partido.FechaHoraInicioString);
                    PartidoRepo.PartidoInsert(partido);
                    return RedirectToAction("Index");
                }
                catch
                {
                    return View();
                }
            }
            catch
            {
                return View();
            }
        }

        //JugadoresConvocados
        [HttpPost]
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
            jugador.EquipoId = jugadorEliminar.IdEquipo;
            jugador.FechaHastaEquipo = DateTime.Now;

            JugadoresRepo.JugadorPorPartidoDelete(jugador);

            return Json(new { success = false, message = "Un tag failed " }, JsonRequestBehavior.AllowGet);
        }


    }
}
