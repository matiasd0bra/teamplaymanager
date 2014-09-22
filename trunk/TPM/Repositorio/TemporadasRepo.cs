using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class TemporadasRepo
    {
        public static List<Temporada> TemporadasGetAllRepo()
        {
            TemporadasDAL TemporadasDal = new TemporadasDAL();
            DataTable dt = TemporadasDal.TemporadaGetAll();

            Temporada Temporada;
            List<Temporada> TemporadaList = new List<Temporada>();


            foreach (DataRow item in dt.Rows)
            {
                Temporada = new Temporada();

                Temporada.TemporadaId = int.Parse(item["TemporadaId"].ToString());
                Temporada.TemporadaNombre = item["TemporadaNombre"].ToString();


                TemporadaList.Add(Temporada);
            }

            return TemporadaList;
        }

        //public static Temporada TemporadByIdRepo(int id)
        //{
        //    TemporadasDAL TemporadsDal = new TemporadasDAL();
        //    DataTable dt = TemporadsDal.TemporadById(id);

        //    Temporada Temporada = new Temporada();

        //    Temporada.Id = int.Parse(dt.Rows[0]["TemporadId"].ToString());
        //    Temporada.CategoriaId = int.Parse(dt.Rows[0]["CategoriaId"].ToString());
        //    Temporada.CategoriaNombre = dt.Rows[0]["Nombre"].ToString();
        //    Temporada.Liga = dt.Rows[0]["NombreLiga"].ToString();
        //    Temporada.Division = dt.Rows[0]["NombreDivision"].ToString();

        //    return Temporada;
        //}


        //public static int TemporadInsert(Temporada Temporada)
        //{
        //    TemporadasDAL TemporadsDal = new TemporadasDAL();
        //    return TemporadsDal.TemporadInsert(Temporada.CategoriaId, Temporada.DivisionId, Temporada.LigaId, Temporada.NombreTemporad);


        //}

        //public static int TemporadUpdate(Temporada Temporada)
        //{
        //    TemporadasDAL TemporadsDal = new TemporadasDAL();
        //    return TemporadsDal.TemporadUpdate(Temporada.Id, Temporada.CategoriaId);
        //}
    }
}