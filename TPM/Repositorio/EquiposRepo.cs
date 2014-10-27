using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class EquiposRepo
    {
        public static List<Equipo> EquiposGetAllRepo()
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            DataTable dt = EquiposDal.EquipoGetAll();

            Equipo equipo;
            List<Equipo> equipoList = new List<Equipo>();


            foreach (DataRow item in dt.Rows)
            {
                equipo = new Equipo();

                equipo.Id = int.Parse(item["EquipoId"].ToString());
                equipo.Liga = item["NombreLiga"].ToString();
                equipo.Division = item["NombreDivision"].ToString();
                equipo.NombreEquipo = item["NombreEquipo"].ToString();
                equipo.CategoriaNombre = item["nombreCategoria"].ToString();

                equipoList.Add(equipo);
            }

            return equipoList;
        }

        public static Equipo EquipoByIdRepo(int id)
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            DataTable dt = EquiposDal.EquipoById(id);

            Equipo equipo = new Equipo();

            equipo.Id = int.Parse(dt.Rows[0]["EquipoId"].ToString());
            equipo.NombreEquipo = dt.Rows[0]["NombreEquipo"].ToString();
            equipo.Liga = dt.Rows[0]["NombreLiga"].ToString();
            equipo.Division = dt.Rows[0]["NombreDivision"].ToString();

            return equipo;
        }


        public static int EquipoInsert(Equipo equipo)
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            return EquiposDal.EquipoInsert(equipo.DivisionId, equipo.LigaId, equipo.NombreEquipo);


        }

        public static int EquipoUpdate(Equipo Equipo)
        {
            EquiposDAL EquiposDal = new EquiposDAL();

            return EquiposDal.EquipoUpdate(Equipo.Id, Equipo.DivisionId, Equipo.LigaId, Equipo.NombreEquipo);
        }

        public static int EquipoDelete(int Id)
        {
            EquiposDAL EquiposDal = new EquiposDAL();

            return EquiposDal.EquipoDelete(Id);
        }

    }
}
