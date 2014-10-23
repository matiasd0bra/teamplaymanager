using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;
using TPM.Models;
using TPM.Repositorio;

namespace TPM.Controllers
{
    public class JugadorController : Controller
    {
        //
        // GET: /Jugador/

        public ActionResult Index(string parametroBuscar)
        {
            List<Jugador> jugadores = JugadoresRepo.JugadoresGetAllRepo(parametroBuscar);
            return View(jugadores);
        }

        //
        // GET: /Jugador/Details/5

        public ActionResult Details(int id)
        {
            Jugador jugador = JugadoresRepo.JugadorByIdRepo(id);
            jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
            jugador.EquiposList = JugadoresRepo.JugadorEquiposList(id);
            jugador.EquiposListHistorico = JugadoresRepo.JugadorEquiposListHistorico(id);

            return View(jugador);
        }

        //
        // GET: /Jugador/Create

        public ActionResult Create()
        {
            Jugador jugador = new Jugador();
            jugador.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            jugador.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            ViewBag.returnUrl = Request.UrlReferrer;

            return View(jugador);
        }

        //
        // POST: /Jugador/Create

        [HttpPost]
        public ActionResult Create(Jugador jugador, HttpPostedFileBase file, string returnUrl)
        {

            try
            {
                bool Url = returnUrl.Contains("AssignarJugadores/");

                if(ModelState.IsValid)
                    {
                        if (file != null)
                        {
                            string ImageName = System.IO.Path.GetFileName(file.FileName);
                            string physicalPath = Server.MapPath("~/Images/Jugadores/" + ImageName);

                            // save image in folder
                            file.SaveAs(physicalPath);


                            jugador.ImagenPath = ImageName;
                        }
                        else
                        {
                            jugador.ImagenPath = "DefaultImage.jpg";
                        }

                        jugador.FechaNac = DateTime.Parse(jugador.FechaNacFormateada);

                        jugador.Categoria = CategoriaRepo.CategoriaIdByAño(jugador.FechaNac.Year);

                        jugador.CoberturaMedica.NroObraSocial = jugador.CoberturaMedica.NroObraSocialString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroObraSocialString);
                        jugador.CoberturaMedica.NroServicioEmergencia = jugador.CoberturaMedica.NroServicioEmergenciaString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroServicioEmergenciaString);
                        jugador.DatosGenerales.Hermanos = jugador.DatosGenerales.HermanosString == null ? 0 : Int32.Parse(jugador.DatosGenerales.HermanosString);
                        jugador.Peso = jugador.PesoString == null ? 0 : Int32.Parse(jugador.PesoString);
                        jugador.Estatura = jugador.EstaturaString == null ? 0 : Int32.Parse(jugador.EstaturaString);

                        jugador.Id = JugadoresRepo.JugadorInsert(jugador);

                        if (Url)
                        {
                            string equipoId = returnUrl.Substring(returnUrl.LastIndexOf('/') + 1);
                            jugador.EquipoId = int.Parse(equipoId);

                            JugadoresRepo.JugadorPorEquipoInsert(jugador);

                            return Redirect(returnUrl);
                        }

                        return RedirectToAction("Index");
                    }
            ViewBag.returnUrl = Request.UrlReferrer;
            jugador.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            jugador.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            return View(jugador);
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
            Jugador jugador = new Jugador();
            jugador = JugadoresRepo.JugadorByIdRepo(id);
            jugador.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            jugador.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
            jugador.CoberturaMedica.NroObraSocialString = (jugador.CoberturaMedica.NroObraSocialString == "0") ? null : jugador.CoberturaMedica.NroObraSocialString;
            jugador.CoberturaMedica.NroServicioEmergenciaString = (jugador.CoberturaMedica.NroServicioEmergenciaString == "0") ? null : jugador.CoberturaMedica.NroServicioEmergenciaString;
            jugador.DatosGenerales.HermanosString = (jugador.DatosGenerales.HermanosString == "0") ? null : jugador.DatosGenerales.HermanosString;

            return View(jugador);
        }

        //
        // POST: /Jugador/Edit/5

        [HttpPost]
        public ActionResult Edit(Jugador jugador, HttpPostedFileBase file)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (file != null)
                    {
                        string ImageName = System.IO.Path.GetFileName(file.FileName);
                        string physicalPath = Server.MapPath("~/Images/Jugadores/" + ImageName);

                        // save image in folder
                        file.SaveAs(physicalPath);

                        jugador.ImagenPath = ImageName;
                                               
                        jugador.FechaNac = DateTime.Parse(jugador.FechaNacFormateada);
                        jugador.Categoria = CategoriaRepo.CategoriaIdByAño(jugador.FechaNac.Year);
                        jugador.Peso = jugador.PesoString == null ? 0 : Int32.Parse(jugador.PesoString);
                        jugador.Estatura = jugador.EstaturaString == null ? 0 : Int32.Parse(jugador.EstaturaString);
                        jugador.CoberturaMedica.NroObraSocial = jugador.CoberturaMedica.NroObraSocialString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroObraSocialString);
                        jugador.CoberturaMedica.NroServicioEmergencia = jugador.CoberturaMedica.NroServicioEmergenciaString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroServicioEmergenciaString);
                        jugador.DatosGenerales.Hermanos = jugador.DatosGenerales.HermanosString == null ? 0 : Int32.Parse(jugador.DatosGenerales.HermanosString);
                        JugadoresRepo.JugadorUpdateFoto(jugador);
                    }
                    else
                    {                       
                        
                        jugador.FechaNac = DateTime.Parse(jugador.FechaNacFormateada);
                        jugador.Categoria = CategoriaRepo.CategoriaIdByAño(jugador.FechaNac.Year);
                        jugador.Peso = jugador.PesoString == null ? 0 : Int32.Parse(jugador.PesoString);
                        jugador.Estatura = jugador.EstaturaString == null ? 0 : Int32.Parse(jugador.EstaturaString);
                        jugador.CoberturaMedica.NroObraSocial = jugador.CoberturaMedica.NroObraSocialString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroObraSocialString);
                        jugador.CoberturaMedica.NroServicioEmergencia = jugador.CoberturaMedica.NroServicioEmergenciaString == null ? 0 : Int32.Parse(jugador.CoberturaMedica.NroServicioEmergenciaString);
                        jugador.DatosGenerales.Hermanos = jugador.DatosGenerales.HermanosString == null ? 0 : Int32.Parse(jugador.DatosGenerales.HermanosString);
                        JugadoresRepo.JugadorUpdate(jugador);
                    }
                    return RedirectToAction("Index");
                }
                Jugador jugador1 = JugadoresRepo.JugadorByIdRepo(jugador.Id);
                jugador.ImagenPath = jugador1.ImagenPath;

                jugador.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
                jugador.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
                return View(jugador);
            }
            catch
            {
                return View();
            }
        }

      
        public ActionResult Delete(int id)
        {
            try
            {

                JugadoresRepo.JugadorDelete(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }        
       

        public string GetJugadorPorId(int id)
        {
            try
            {
                var jugador = JugadoresRepo.JugadorByIdRepo(id);
                //var serializer = new JavaScriptSerializer();
                //var res = serializer.Serialize(result);

                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();

                var res = "<tr><td>"+jugador.Nombre+"</td><td>"+jugador.Apellido+"</td><td>"+jugador.TipoDocNombre+"</td><td>"+jugador.NumeroDoc+
                    "</td><td>"+jugador.FechaNacFormateada+"</td></tr>";

                return res;
            }
            catch
            {
                return "false";
            }
        } 
    }
}
