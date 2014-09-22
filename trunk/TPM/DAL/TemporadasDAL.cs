using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TPM.DAL
{
    public class TemporadasDAL
    {

        public DataTable TemporadaGetAll()
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("TemporadasGetAll", con))
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

        //public DataTable TemporadById(int TemporadId)
        //{
        //    var dt = new DataTable();
        //    SqlDataReader sqlDataReader;

        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("TemporadById", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = TemporadId;
        //            //cmd.Parameters.Add("@LastName", SqlDbType.VarChar).Value = txtLastName.Text;

        //            con.Open();
        //            sqlDataReader = cmd.ExecuteReader();
        //            dt.Load(sqlDataReader);
        //        }
        //    }
        //    return dt;
        //}

        //public int TemporadInsert(int categoriaId, int divisionId, int ligaId, string nombreTemporad)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("TemporadInsert", con))
        //        {

        //            cmd.CommandType = CommandType.StoredProcedure;

        //            cmd.Parameters.Add("@CategoriaId", SqlDbType.Int).Value = categoriaId;
        //            cmd.Parameters.Add("@LigaId", SqlDbType.Int).Value = ligaId;
        //            cmd.Parameters.Add("@DivisionId", SqlDbType.Int).Value = divisionId;
        //            cmd.Parameters.Add("@NombreTemporad", SqlDbType.VarChar).Value = nombreTemporad;


        //            con.Open();
        //            ret = cmd.ExecuteNonQuery();
        //        }
        //    }
        //    return ret;
        //}

        //public int TemporadUpdate(int id, int categoriaId)
        //{
        //    int ret;
        //    using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
        //    {
        //        using (SqlCommand cmd = new SqlCommand("TemporadUpdate", con))
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