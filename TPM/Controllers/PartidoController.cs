using System;
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
            partido.listPartidosSinDatos = PartidoRepo.PartidosSinDatos() ;
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
            partido.TemporadasList = TemporadasRepo.TemporadasGetAllRepo();

            partido.JugadoresViewModel = new AssignarJugadoresViewModel();

            partido.JugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaGetAllRepo();

            partido.JugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresGetAllRepo("");

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
                    partido.HoraCitacion = DateTime.Parse(partido.HoraCitacionString);
                    partido.NumeroFecha = Convert.ToInt32(partido.NumeroFechaString);

                    partido.PartidoId = PartidoRepo.PartidoInsert(partido);

                    if (accion == "Guardar y volver al calendario") return RedirectToAction("Index");
                    if (accion == "Guardar y convocar Jugadores") return RedirectToAction("ConvocarJugadores", new { id = partido.PartidoId });
                    if (accion == "Guardar y cargar otro partido") return RedirectToAction("Create");
                }
                catch
                {
                    return View();
                }
            }
            partido.JugadoresViewModel = new AssignarJugadoresViewModel();
            partido.EquiposList = EquiposRepo.EquiposGetAllRepo();
            partido.TemporadasList = TemporadasRepo.TemporadasGetAllRepo();
            partido.JugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresGetAllRepo("");
            partido.PartidoId = -1;
            return View(partido);
        }

        public ActionResult ConvocarJugadores(int id, string NombreFiltro = null, string ApellidoFiltro = null, string CategoriaFiltro = null, string EquiposFiltro = null, string PosicionFiltro=null)
        {
            var assignarJugadoresViewModel = new AssignarJugadoresViewModel();
            assignarJugadoresViewModel.PartidoSeleccionado = PartidoRepo.PartidoByIdRepo(id);
            assignarJugadoresViewModel.CategoriaList = CategoriaRepo.CategoriaByEquipo(assignarJugadoresViewModel.PartidoSeleccionado.EquipoId);
            assignarJugadoresViewModel.ListaJugadoresTitulares = JugadoresRepo.JugadoresByPartido(id,"T");
            assignarJugadoresViewModel.ListaJugadoresSuplentes = JugadoresRepo.JugadoresByPartido(id,"S");
            assignarJugadoresViewModel.NombreFiltro = NombreFiltro;
            assignarJugadoresViewModel.CategoriaFiltro = CategoriaFiltro;
            if (EquiposFiltro == "on")
            {
                assignarJugadoresViewModel.EquiposFiltro = "checked";   
            }
            assignarJugadoresViewModel.PosicionFiltro = PosicionFiltro;
            assignarJugadoresViewModel.Fecha = assignarJugadoresViewModel.PartidoSeleccionado.FechaHoraInicio.ToShortDateString();
            assignarJugadoresViewModel.Hora = assignarJugadoresViewModel.PartidoSeleccionado.FechaHoraInicio.ToShortTimeString();
            assignarJugadoresViewModel.HoraCitacion = assignarJugadoresViewModel.PartidoSeleccionado.HoraCitacion.ToShortTimeString();
            
            foreach (var item in assignarJugadoresViewModel.CategoriaList)
            {

                assignarJugadoresViewModel.CategoriasString += item.NombreCategoria;
                if (item != assignarJugadoresViewModel.CategoriaList[assignarJugadoresViewModel.CategoriaList.Count - 1])
                {
                    assignarJugadoresViewModel.CategoriasString += " - ";
                }


            }
            foreach (var item in assignarJugadoresViewModel.CategoriaList)
            {

                assignarJugadoresViewModel.CategoriasBuscar += "and j.Categoria in (" + item.NombreCategoria;
                if (item != assignarJugadoresViewModel.CategoriaList[assignarJugadoresViewModel.CategoriaList.Count - 1])
                {
                    assignarJugadoresViewModel.CategoriasBuscar += ", ";
                }
                assignarJugadoresViewModel.CategoriasBuscar += ")";

            }
            assignarJugadoresViewModel.ListaJugadores = JugadoresRepo.JugadoresSearchPartido(id, assignarJugadoresViewModel.PartidoSeleccionado.EquipoId, NombreFiltro, ApellidoFiltro, CategoriaFiltro, EquiposFiltro, PosicionFiltro);

            return View(assignarJugadoresViewModel);
        }

        public ActionResult DatosPartido(int id)
        {
            var partido = new Partido();
            partido = PartidoRepo.PartidoByIdRepo(id);
            partido.Fecha = partido.FechaHoraInicio.ToShortDateString();
            partido.Hora = partido.FechaHoraInicio.ToShortTimeString();
            partido.CategoriaList = CategoriaRepo.CategoriaByEquipo(partido.EquipoId);
            partido.JugadoresPartidoList = JugadoresRepo.JugadoresByPartido(id);
            partido.DuracionString = "90";

            foreach (var item in partido.CategoriaList)
            {

                partido.CategoriasString += item.NombreCategoria;
                if (item != partido.CategoriaList[partido.CategoriaList.Count - 1])
                {
                    partido.CategoriasString += " - ";
                }
            }
            partido.GolesPartidoList = JugadoresRepo.GolesJugadoresByPartido(id);
            foreach (var item in partido.GolesPartidoList)
            {
                item.MinutosGolString = item.MinutosGol == 0 ? "" : item.MinutosGol.ToString();
            }
            foreach (var item in partido.JugadoresPartidoList)
            {
                item.MinutosJugadosString = item.MinutosJugados == 0 ? "" : item.MinutosJugados.ToString();
                item.MinPrimeraAmarillaString = item.MinPrimeraAmarilla == 0 ? "" : item.MinPrimeraAmarilla.ToString();
                item.MinSegundaAmarillaString = item.MinSegundaAmarilla == 0 ? "" : item.MinSegundaAmarilla.ToString();
                item.MinRojaString = item.MinRoja == 0 ? "" : item.MinRoja.ToString();
                item.CalificacionString = item.Calificacion == 0 ? "" : item.Calificacion.ToString();
                item.CambioString = item.Cambio == 0 ? "" : item.Cambio.ToString();
                item.GolString = item.Gol == 0 ? "" : item.Gol.ToString();
            }


            return View(partido);
        }


        [HttpPost]
        public ActionResult DatosPartido(Partido partido, string accion)
        {
            PartidoRepo.CargarDatosPartidoInsert(partido);
            PartidoRepo.GolesJugadorPorPartidoUpdate(partido);

            return RedirectToAction("Index");
        }

        public JsonResult ConvocarJugador(JugadoresAsignados jugadorAsignado)
        {
            Jugador jugador = new Jugador();
            jugador.Id = jugadorAsignado.IdJugador;
            jugador.PartidoId = jugadorAsignado.IdPartido;
            jugador.Titular = jugadorAsignado.Titular;
            jugador.NumeroCamiseta = jugadorAsignado.NumeroCamiseta;

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
