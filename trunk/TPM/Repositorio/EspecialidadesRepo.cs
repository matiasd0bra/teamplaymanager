using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class EspecialidadesRepo
    {
        public static List<Especialidad> EspecialidadesGetAllRepo()
        {
            EspecialidadesDAL EspecialidadesDal = new EspecialidadesDAL();
            DataTable dt = EspecialidadesDal.EspecialidadGetAll();

            Especialidad especialidad;
            List<Especialidad> EspecialidadesList = new List<Especialidad>();


            foreach (DataRow item in dt.Rows)
            {
                especialidad = new Especialidad();

                especialidad.EspecialidadId = int.Parse(item["EspecialidadId"].ToString());
                especialidad.EspecialidadNombre = item["Nombre"].ToString();


                EspecialidadesList.Add(especialidad);
            }

            return EspecialidadesList;
        }     
    }
}