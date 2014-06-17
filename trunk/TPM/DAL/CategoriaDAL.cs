using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class CategoriaDAL
    {

        public DataTable CategoriaGetAll()
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("CategoriaGetAll", con))
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

        public DataTable CategoriaById(int categoriaId)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("CategoriaById", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = categoriaId;
                    //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        //public int JugadorInsert(string nombre, string apellido, int tipoDoc, int nroDoc, string dom, int loc)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("JugadorInsert", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
        //            cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = apellido;
        //            cmd.Parameters.Add("@TipoDocId", SqlDbType.VarChar).Value = tipoDoc;
        //            cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = nroDoc;
        //            cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
        //            cmd.Parameters.Add("@LocalidadId", SqlDbType.VarChar).Value = loc;

        //            con.Open();
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}

        //public int JugadorUpdate(int id, string nombre, string apellido, int tipoDoc, int nroDoc, string dom, int loc)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("JugadorUpdate", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
        //            cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
        //            cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = apellido;
        //            cmd.Parameters.Add("@TipoDocId", SqlDbType.VarChar).Value = tipoDoc;
        //            cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = nroDoc;
        //            cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
        //            cmd.Parameters.Add("@LocalidadId", SqlDbType.VarChar).Value = loc;


        //            con.Open();
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}

    }
}