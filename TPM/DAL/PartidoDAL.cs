using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TPM.Models;

namespace TPM.DAL
{
    public class PartidoDAL
    {
        public int PartidoInsert(Partido partido)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PartidoInsert", con))
                {
                    if (partido.Condicion == null) partido.Condicion = "Visitante";

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@TemporadaId", SqlDbType.Int).Value = partido.TemporadaId;
                    cmd.Parameters.Add("@NumeroFecha", SqlDbType.Int).Value = partido.NumeroFecha;
                    cmd.Parameters.Add("@TipoPartido", SqlDbType.Int).Value = partido.TipoPartidoId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = partido.EquipoId;
                    cmd.Parameters.Add("@Rival", SqlDbType.VarChar).Value = partido.Rival;
                    cmd.Parameters.Add("@FechaHoraInicio", SqlDbType.DateTime).Value = partido.FechaHoraInicio;
                    cmd.Parameters.Add("@HoraCitacion", SqlDbType.DateTime).Value = partido.HoraCitacion;
                    cmd.Parameters.Add("@Lugar", SqlDbType.VarChar).Value = partido.Lugar;
                    cmd.Parameters.Add("@Condicion", SqlDbType.VarChar).Value = partido.Condicion;
                    cmd.Parameters.Add("@Cancha", SqlDbType.VarChar).Value = partido.Cancha;

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