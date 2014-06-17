using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class LocalidadesDAL
    {

        public DataTable LocalidadGetAll()
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("LocalidadGetAll", con))
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

        //public DataTable LocalidadById(int LocalidadId)
        //{
        //    var dt = new DataTable();
        //    SqlDataReader sqlDataReader;

        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("LocalidadById", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = LocalidadId;
        //            //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

        //            con.Open();
        //            sqlDataReader = cmd.ExecuteReader();
        //            dt.Load(sqlDataReader);
        //        }
        //    }
        //    return dt;
        //}

        //public int LocalidadInsert(int categoriaId, int divisionId, int ligaId, string nombreLocalidad)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("LocalidadInsert", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@CategoriaId", SqlDbType.Int).Value = categoriaId;
        //            cmd.Parameters.Add("@LigaId", SqlDbType.Int).Value = ligaId;
        //            cmd.Parameters.Add("@DivisionId", SqlDbType.Int).Value = divisionId;
        //            cmd.Parameters.Add("@NombreLocalidad", SqlDbType.VarChar).Value = nombreLocalidad;


        //            con.Open();
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}

        //public int LocalidadUpdate(int id, int categoriaId)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("LocalidadUpdate", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
        //            cmd.Parameters.Add("@CategoriaId", SqlDbType.VarChar).Value = categoriaId;


        //            con.Open();
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}
    }
}