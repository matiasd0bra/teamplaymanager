using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;


namespace TPM.Repositorio
{
    public class DivisionesRepo
    {
            public static List<Division> DivisionGetAllRepo()
            {
                DivisionesDAL dal = new DivisionesDAL();
                DataTable dt = dal.DivisionGetAll();

                Division modelo;
                List<Division> modeloList = new List<Division>();


                foreach (DataRow item in dt.Rows)
                {
                    modelo = new Division();

                    modelo.DivisionId = int.Parse(item["DivisionId"].ToString());
                    modelo.NombreDivision = item["NombreDivision"].ToString();


                    modeloList.Add(modelo);
                }

                return modeloList;
            }

            public static Division DivisionByIdRepo(int id)
            {
                DivisionesDAL divisionsDal = new DivisionesDAL();
                DataTable dt = divisionsDal.DivisionById(id);

                Division division = new Division();

                division.DivisionId = int.Parse(dt.Rows[0]["DivisionId"].ToString());
                division.NombreDivision = dt.Rows[0]["NombreDivision"].ToString();
                return division;
            }


            //public static int DivisionInsert(Division Division)
            //{
            //    DivisionsDAL DivisionsDal = new DivisionsDAL();
            //    return DivisionsDal.DivisionInsert(Division.CategoriaId);


            //}

            //public static int DivisionUpdate(Division Division)
            //{
            //    DivisionsDAL DivisionsDal = new DivisionsDAL();
            //    return DivisionsDal.DivisionUpdate(Division.Id, Division.CategoriaId);
            //}
    }
}