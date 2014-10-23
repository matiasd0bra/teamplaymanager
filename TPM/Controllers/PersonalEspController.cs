using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Web;
using System.Web.Mvc;
using TPM.Models;
using TPM.Repositorio;

namespace TPM.Controllers
{
    public class PersonalEspController : Controller
    {
        //
        // GET: /PersonalEsp/

        public ActionResult Index(string parametroBuscar)
        {
            List<PersonalEsp> personalEsp = PersonalEspRepo.PersonalEspesGetAllRepo(parametroBuscar);
            return View(personalEsp);
        }

        //
        // GET: /PersonalEsp/Details/5

        public ActionResult Details(int id)
        {
            PersonalEsp personalEsp = PersonalEspRepo.PersonalEspByIdRepo(id);
            return View(personalEsp);
        }

        //
        // GET: /PersonalEsp/Create

        public ActionResult Create()
        {
            PersonalEsp personalEsp = new PersonalEsp();
            personalEsp.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            personalEsp.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            personalEsp.Equipos = EquiposRepo.EquiposGetAllRepo();
            personalEsp.EspecialidadLista = EspecialidadesRepo.EspecialidadesGetAllRepo();
            ViewBag.returnUrl = Request.UrlReferrer;
            return View(personalEsp);
        }

        //
        // POST: /PersonalEsp/Create

        [HttpPost]
        public ActionResult Create(PersonalEsp personalEsp, string returnUrl)
        {
            try
            {
                bool Url = returnUrl.Contains("AsignarPersonalEsp/");

                if (ModelState.IsValid)
                {
                    personalEsp.Id = PersonalEspRepo.PersonalEspInsert(personalEsp);

                    if (Url == true)
                    {
                        string equipoId = returnUrl.Substring(returnUrl.LastIndexOf('/') + 1);
                        personalEsp.EquipoId = int.Parse(equipoId);

                        PersonalEspRepo.PersonalEspPorEquipoInsert(personalEsp);

                        return Redirect(returnUrl);
                    }

                    return RedirectToAction("Index");
                }
                personalEsp.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
                personalEsp.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
                personalEsp.EspecialidadLista = EspecialidadesRepo.EspecialidadesGetAllRepo();

                return View(personalEsp);
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /PersonalEsp/Edit/5

        public ActionResult Edit(int id)
        {
            PersonalEsp personalEsp = new PersonalEsp();
            personalEsp = PersonalEspRepo.PersonalEspByIdRepo(id);
            personalEsp.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            personalEsp.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            personalEsp.EspecialidadLista = EspecialidadesRepo.EspecialidadesGetAllRepo();
            return View(personalEsp);
        }

        //
        // POST: /PersonalEsp/Edit/5

        [HttpPost]
        public ActionResult Edit(PersonalEsp personalEsp)
        {
            try
            {
                PersonalEspRepo.PersonalEspUpdate(personalEsp);              
                return RedirectToAction("Index");
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
                PersonalEspRepo.PersonalEspDelete(id);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        public string GetPersonalEspPorId(int id)
        {
            try
            {
                var personalEsp = PersonalEspRepo.PersonalEspByIdRepo(id);
                //var serializer = new JavaScriptSerializer();
                //var res = serializer.Serialize(result);

                var res = "<tr><td>" + personalEsp.Nombre + "</td><td>" + personalEsp.Apellido + "</td><td>" + personalEsp.TipoDocNombre + "</td><td>" + personalEsp.NumeroDoc +
                    "</td><td>" + personalEsp.Domicilio + "</td><td>" + personalEsp.LocalidadNombre + "</td></tr>";

                return res;
            }
            catch
            {
                return "false";
            }
        }
    }
}
