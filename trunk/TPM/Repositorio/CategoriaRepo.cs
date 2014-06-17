using System;
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

        public static Categoria categoriaByIdRepo(int id)
        {
            CategoriaDAL categoriasDal = new CategoriaDAL();
            DataTable dt = categoriasDal.CategoriaById(id);

            Categoria modelo = new Categoria();

            modelo.CategoriaId = int.Parse(dt.Rows[0]["CategoriaId"].ToString());
            modelo.NombreCategoria = dt.Rows[0]["NombreCategoria"].ToString();

            return modelo;
        }


        //public static int categoriaInsert(categoria categoria)
        //{
        //    categoriasDAL categoriasDal = new categoriasDAL();
        //    return categoriasDal.categoriaInsert(categoria.CategoriaId);


        //}

        //public static int categoriaUpdate(categoria categoria)
        //{
        //    categoriasDAL categoriasDal = new categoriasDAL();
        //    return categoriasDal.categoriaUpdate(categoria.Id, categoria.CategoriaId);
        //}
    }
}