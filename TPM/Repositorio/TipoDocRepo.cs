using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class TipoDocRepo
    {
        public static List<TipoDoc> TipoDocGetAllRepo()
        {
            TipoDocDAL dal = new TipoDocDAL();
            DataTable dt = dal.TipoDocGetAll();

            TipoDoc tipodoc;
            List<TipoDoc> tipoDocList = new List<TipoDoc>();


            foreach (DataRow item in dt.Rows)
            {
                tipodoc = new TipoDoc();

                tipodoc.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                tipodoc.TipoDocNombre = item["Nombre"].ToString();


                tipoDocList.Add(tipodoc);
            }

            return tipoDocList;
        }
    }
}