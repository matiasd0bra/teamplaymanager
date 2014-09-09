﻿using System;
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
            jugador.Equipos = JugadoresRepo.JugadorEquiposList(id);

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
                        jugador.Id = JugadoresRepo.JugadorInsert(jugador);
                        if (returnUrl != "~/Jugador/Index")
                        {
                            string equipoId = returnUrl.Substring(returnUrl.LastIndexOf('/') + 1);
                            jugador.EquipoId = int.Parse(equipoId);

                            JugadoresRepo.JugadorPorEquipoInsert(jugador);

                            return Redirect(returnUrl);
                        }

                        return RedirectToAction("Index");
                    }
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
            Jugador jugador = JugadoresRepo.JugadorByIdRepo(id);
            jugador.TipoDocLista = TipoDocRepo.TipoDocGetAllRepo();
            jugador.LocalidadLista = LocalidadesRepo.LocalidadesGetAllRepo();
            jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
            

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
                        JugadoresRepo.JugadorUpdateFoto(jugador);
                    }
                    else
                    {
                        jugador.FechaNac = DateTime.Parse(jugador.FechaNacFormateada);
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

        //public ActionResult FileUpload(HttpPostedFileBase file)
        //{

        //    if (file != null)
        //    {
        //        string ImageName = System.IO.Path.GetFileName(file.FileName);
        //        string physicalPath = Server.MapPath("~" + "/Images/Jugadores/" + ImageName);

        //        // save image in folder
        //        file.SaveAs(ImageName);

        //        //save new record in database

        //        //tblA newRecord = new tblA();
        //        //newRecord.fname = Request.Form["fname"];
        //        //newRecord.lname = Request.Form["lname"];
        //        //newRecord.imageUrl = ImageName;
        //        //db.tblAs.Add(newRecord);
        //        //db.SaveChanges();

        //    }
        //    //Display records
        //    return RedirectToAction("");
        //}
    }
}
