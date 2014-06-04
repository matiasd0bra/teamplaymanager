using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class EquiposDAL
    {
        public string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["tmpConnectionString"].ConnectionString;
        }


        public DataTable EquipoGetAll()
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EquipoGetAll", con))
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

        public DataTable EquipoById(int EquipoId)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EquipoById", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = EquipoId;
                    //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public int EquipoInsert(int categoriaId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EquipoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@CategoriaId", SqlDbType.VarChar).Value = categoriaId;


                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int EquipoUpdate(int id, int categoriaId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EquipoUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
                    cmd.Parameters.Add("@CategoriaId", SqlDbType.VarChar).Value = categoriaId;


                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }
    }
}