using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.Models;

namespace TPM.DAL
{
    public class PersonalEspDAL
    {
        public string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["tmpConnectionString"].ConnectionString;
        }


        public DataTable PersonalEspGetAll(string parametroBuscar)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspGetAll", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (parametroBuscar == null)
                    {
                        parametroBuscar = "";
                    }
                    cmd.Parameters.Add("@ParametroBuscar", SqlDbType.VarChar).Value = parametroBuscar;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable PersonalEspById(int personalEspId)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspById", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = personalEspId;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public int PersonalEspInsert(PersonalEsp personalEsp)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (personalEsp.Telefono == null) personalEsp.Telefono = "";
                    if (personalEsp.Email == null) personalEsp.Email = "";
                    if (personalEsp.Domicilio == null) personalEsp.Domicilio = "";

                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = personalEsp.Nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = personalEsp.Apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.Int).Value = personalEsp.TipoDocId;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = personalEsp.NumeroDoc;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = personalEsp.Domicilio;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = personalEsp.LocalidadId;
                    cmd.Parameters.Add("@EspecialidadId", SqlDbType.Int).Value = personalEsp.EspecialidadId;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = personalEsp.Telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = personalEsp.Email;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }

        public int PersonalEspPorEquipoInsert(int personalEspId, int equipoId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspPorEquipoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@PersonalEspId", SqlDbType.Int).Value = personalEspId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = equipoId;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }
        public int PersonalEspPorEquipoDelete(int personalId, int equipoId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspPorEquipoDelete", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@personalId", SqlDbType.Int).Value = personalId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = equipoId;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int PersonalEspUpdate(PersonalEsp personalEsp)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = personalEsp.Id;
                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = personalEsp.Nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = personalEsp.Apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.Int).Value = personalEsp.TipoDocId;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = personalEsp.NumeroDoc;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = personalEsp.Domicilio;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = personalEsp.LocalidadId;
                    cmd.Parameters.Add("@EspecialidadId", SqlDbType.Int).Value = personalEsp.EspecialidadId;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = personalEsp.Telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = personalEsp.Email;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int PersonalEspDelete(int id)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalEspDelete", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;                    

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public DataTable PersonalSearch(int idEquipo, string nombre, string apellido)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalSearch", con))
                {
                    if (nombre == null)
                    {
                        nombre = "";
                    }
                    if (apellido == null)
                    {
                        apellido = "";
                    }

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdEquipo", SqlDbType.VarChar).Value = idEquipo;
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                    cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable PersonalByEquipo(int idEquipo)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("PersonalByEquipo", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdEquipo", SqlDbType.VarChar).Value = idEquipo;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable JugadorEquiposList(int jugadorId)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorEquiposList", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdJugador", SqlDbType.VarChar).Value = jugadorId;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

    }
}
