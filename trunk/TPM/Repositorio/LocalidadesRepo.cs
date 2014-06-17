using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class LocalidadesRepo
    {
        public static List<Localidad> LocalidadesGetAllRepo()
        {
            LocalidadesDAL LocalidadesDal = new LocalidadesDAL();
            DataTable dt = LocalidadesDal.LocalidadGetAll();

            Localidad Localidad;
            List<Localidad> LocalidadList = new List<Localidad>();


            foreach (DataRow item in dt.Rows)
            {
                Localidad = new Localidad();

                Localidad.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                Localidad.LocalidadNombre = item["Nombre"].ToString();


                LocalidadList.Add(Localidad);
            }

            return LocalidadList;
        }

        //public static Localidad LocalidadByIdRepo(int id)
        //{
        //    LocalidadesDAL LocalidadsDal = new LocalidadesDAL();
        //    DataTable dt = LocalidadsDal.LocalidadById(id);

        //    Localidad Localidad = new Localidad();

        //    Localidad.Id = int.Parse(dt.Rows[0]["LocalidadId"].ToString());
        //    Localidad.CategoriaId = int.Parse(dt.Rows[0]["CategoriaId"].ToString());
        //    Localidad.CategoriaNombre = dt.Rows[0]["Nombre"].ToString();
        //    Localidad.Liga = dt.Rows[0]["NombreLiga"].ToString();
        //    Localidad.Division = dt.Rows[0]["NombreDivision"].ToString();

        //    return Localidad;
        //}


        //public static int LocalidadInsert(Localidad Localidad)
        //{
        //    LocalidadesDAL LocalidadsDal = new LocalidadesDAL();
        //    return LocalidadsDal.LocalidadInsert(Localidad.CategoriaId, Localidad.DivisionId, Localidad.LigaId, Localidad.NombreLocalidad);


        //}

        //public static int LocalidadUpdate(Localidad Localidad)
        //{
        //    LocalidadesDAL LocalidadsDal = new LocalidadesDAL();
        //    return LocalidadsDal.LocalidadUpdate(Localidad.Id, Localidad.CategoriaId);
        //}
    }
}