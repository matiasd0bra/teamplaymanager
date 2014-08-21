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

        public ActionResult Index()
        {
            List<PersonalEsp> personalEsp = PersonalEspRepo.PersonalEspesGetAllRepo();
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
            return View(personalEsp);
        }

        //
        // POST: /PersonalEsp/Create

        [HttpPost]
        public ActionResult Create(PersonalEsp personalEsp)
        {
            try
            {
                personalEsp.Id = PersonalEspRepo.PersonalEspInsert(personalEsp);

                PersonalEspRepo.PersonalEspPorEquipoInsert(personalEsp);

                return RedirectToAction("Index");
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
            return View();
        }

        //
        // POST: /PersonalEsp/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /PersonalEsp/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /PersonalEsp/Delete/5

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
