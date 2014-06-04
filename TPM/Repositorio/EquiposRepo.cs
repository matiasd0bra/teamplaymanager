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

            Equipo Equipo;
            List<Equipo> EquipoList = new List<Equipo>();


            foreach (DataRow item in dt.Rows)
            {
                Equipo = new Equipo();

                Equipo.Id = int.Parse(item["EquipoId"].ToString());
                Equipo.CategoriaId = int.Parse(item["CategoriaId"].ToString());


                EquipoList.Add(Equipo);
            }

            return EquipoList;
        }

        public static Equipo EquipoByIdRepo(int id)
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            DataTable dt = EquiposDal.EquipoById(id);

            Equipo Equipo = new Equipo();

            Equipo.Id = int.Parse(dt.Rows[0]["EquipoId"].ToString());
            Equipo.CategoriaId = int.Parse(dt.Rows[0]["CategoriaId"].ToString());

            return Equipo;
        }


        public static int EquipoInsert(Equipo Equipo)
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            return EquiposDal.EquipoInsert(Equipo.CategoriaId);


        }

        public static int EquipoUpdate(Equipo Equipo)
        {
            EquiposDAL EquiposDal = new EquiposDAL();
            return  EquiposDal.EquipoUpdate(Equipo.Id, Equipo.CategoriaId);
        }
    }
    }
