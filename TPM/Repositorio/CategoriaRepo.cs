﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class CategoriaRepo
    {
        public static List<Categoria> CategoriaGetAllRepo()
        {
            CategoriaDAL dal = new CategoriaDAL();
            DataTable dt = dal.CategoriaGetAll();

            Categoria modelo;
            List<Categoria> modeloList = new List<Categoria>();


            foreach (DataRow item in dt.Rows)
            {
                modelo = new Categoria();

                modelo.CategoriaId = int.Parse(item["CategoriaId"].ToString());
                modelo.NombreCategoria = item["NombreCategoria"].ToString();


                modeloList.Add(modelo);
            }

            return modeloList;
        }

        //public static Equipo EquipoByIdRepo(int id)
        //{
        //    EquiposDAL EquiposDal = new EquiposDAL();
        //    DataTable dt = EquiposDal.EquipoById(id);

        //    Equipo Equipo = new Equipo();

        //    Equipo.Id = int.Parse(dt.Rows[0]["EquipoId"].ToString());
        //    Equipo.CategoriaId = int.Parse(dt.Rows[0]["CategoriaId"].ToString());
        //    Equipo.CategoriaNombre = dt.Rows[0]["Nombre"].ToString();
        //    Equipo.Liga = dt.Rows[0]["NombreLiga"].ToString();
        //    Equipo.Division = dt.Rows[0]["NombreDivision"].ToString();

        //    return Equipo;
        //}


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