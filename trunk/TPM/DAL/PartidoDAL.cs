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

        public static void DatosPartidoInsert(Partido partido)
        {
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {

                //Guardamos los datos del partido
                using (SqlCommand cmd = new SqlCommand("PartidoDatosInsert", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = partido.PartidoId;
                    cmd.Parameters.Add("@Duracion", SqlDbType.Int).Value = partido.Duracion;
                    cmd.Parameters.Add("@GolesPropios", SqlDbType.Int).Value = partido.GolesPropios;
                    cmd.Parameters.Add("@GolesRival", SqlDbType.Int).Value = partido.GolesRival;
                    
                    con.Open();
                    cmd.ExecuteScalar();
                }

                //Guardamos los datos de cada jugador
                foreach (var item in partido.JugadoresPartidoList)
                {
                    using (SqlCommand cmd = new SqlCommand("JugadorPorPartidoUpdate", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = partido.PartidoId;
                        cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = item.Id;
                        cmd.Parameters.Add("@NumeroCamiseta", SqlDbType.Int).Value = item.NumeroCamiseta;
                        cmd.Parameters.Add("@MinutosJugados", SqlDbType.Int).Value = item.MinutosJugados;
                        cmd.Parameters.Add("@MinPrimeraAmarilla", SqlDbType.Int).Value = item.MinPrimeraAmarilla;
                        cmd.Parameters.Add("@MinSegundaAmarilla", SqlDbType.Int).Value = item.MinSegundaAmarilla;
                        cmd.Parameters.Add("@MinRoja", SqlDbType.Int).Value = item.MinRoja;
                        cmd.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value = item.Observaciones;
                        cmd.Parameters.Add("@Calificacion", SqlDbType.Int).Value = item.Calificacion;
                        cmd.Parameters.Add("@Cambio", SqlDbType.Int).Value = item.Cambio;

                        con.Open();
                        cmd.ExecuteScalar();
                    }
                }
                //Guardamos los Goles por Jugador Por Partido
                foreach (var item in partido.JugadoresPartidoList)
                {
                    using (SqlCommand cmd = new SqlCommand("GolesPorJugadorPorPartidoInsert", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = partido.PartidoId;
                        cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = item.Id;
                        cmd.Parameters.Add("@MinutosGol", SqlDbType.Int).Value = item.MinutosJugados;
                        cmd.Parameters.Add("@MinPrimeraAmarilla", SqlDbType.Int).Value = item.MinPrimeraAmarilla;
                        cmd.Parameters.Add("@MinSegundaAmarilla", SqlDbType.Int).Value = item.MinSegundaAmarilla;
                        cmd.Parameters.Add("@MinRoja", SqlDbType.Int).Value = item.MinRoja;
                        cmd.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value = item.Observaciones;
                        cmd.Parameters.Add("@Calificacion", SqlDbType.Int).Value = item.Calificacion;
                        cmd.Parameters.Add("@Cambio", SqlDbType.Int).Value = item.Cambio;

                        con.Open();
                        cmd.ExecuteScalar();
                    }
                }

            }
        }
    }
}