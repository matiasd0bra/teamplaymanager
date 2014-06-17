using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class LigaRepo
    {
            public static List<Liga> LigaGetAllRepo()
            {
                LigaDAL dal = new LigaDAL();
                DataTable dt = dal.LigaGetAll();

                Liga modelo;
                List<Liga> modeloList = new List<Liga>();


                foreach (DataRow item in dt.Rows)
                {
                    modelo = new Liga();

                    modelo.LigaId = int.Parse(item["LigaId"].ToString());
                    modelo.NombreLiga = item["NombreLiga"].ToString();


                    modeloList.Add(modelo);
                }

                return modeloList;
            }

            public static Liga LigaByIdRepo(int id)
            {
                LigaDAL dal = new LigaDAL();
                DataTable dt = dal.LigaById(id);

                Liga modelo = new Liga();
                modelo.LigaId = int.Parse(dt.Rows[0]["LigaId"].ToString());
                modelo.NombreLiga = dt.Rows[0]["NombreLiga"].ToString();

                return modelo;
            }


            //public static int EquipoInsert(Equipo Equipo)
            //{
            //    EquiposDAL EquiposDal = new EquiposDAL();
            //    return EquiposDal.EquipoInsert(Equipo.CategoriaId);


            //}

            //public static int EquipoUpdate(Equipo Equipo)
            //{
            //    EquiposDAL EquiposDal = new EquiposDAL();
            //    return EquiposDal.EquipoUpdate(Equipo.Id, Equipo.CategoriaId);
            //}
    }
}