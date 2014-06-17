using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;

namespace TPM.DAL
{
    public class JugadoresDAL
    {


        public string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["tmpConnectionString"].ConnectionString;
        }


        public DataTable JugadoresGetAll()
        {
            
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresGetAll", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    
                    //cmd.Parameters.Add("@FirstName", SqlDbType.VarChar).Value = txtFirstName.Text;
                    //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable JugadorById(int jugadorId)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorById", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = jugadorId;
                    //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public int JugadorInsert(string nombre, string apellido, int tipoDoc, string nroDoc, string dom, int loc)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.Int).Value = tipoDoc;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = nroDoc;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = loc;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }

        public int JugadorPorEquipoInsert(int jugadorId, int equipoId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorEquipoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugadorId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = equipoId;
  
                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorUpdate(int id, string nombre, string apellido, int tipoDoc, string nroDoc, string dom, int loc)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.VarChar).Value = tipoDoc;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = nroDoc;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.VarChar).Value = loc;


                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }
    }
}

    //@Nombre nvarchar(50)
    //,@Apellido nvarchar(50)
    //,@TipoDocId int
    //,@NumeroDoc int
    //,@Domicilio nvarchar(50)
    //,@LocalidadId int