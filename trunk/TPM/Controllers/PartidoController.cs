using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.Models;
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

    }
}
