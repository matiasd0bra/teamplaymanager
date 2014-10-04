using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class PartidoDAL
    {
        public int PartidoInsert(int TemporadaId, int TipoPartido, int EquipoId, string Rival, DateTime FechaHoraInicio, int LocalidadId, string Local)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PartidoInsert", con))
                {
                    if (Local == null) Local = "";

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@TemporadaId", SqlDbType.Int).Value = TemporadaId;
                    cmd.Parameters.Add("@TipoPartido", SqlDbType.Int).Value = TipoPartido;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = EquipoId;
                    cmd.Parameters.Add("@Rival", SqlDbType.VarChar).Value = Rival;
                    cmd.Parameters.Add("@FechaHoraInicio", SqlDbType.DateTime).Value = FechaHoraInicio;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = LocalidadId;
                    cmd.Parameters.Add("@Local", SqlDbType.VarChar).Value = Local;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }
        public DataTable PartidoById(int id)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PartidoById", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable PartidosSinDatos()
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PartidosSinDatos", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }
    }
}