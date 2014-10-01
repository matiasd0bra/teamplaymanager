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


        public DataTable JugadoresGetAll(string parametroBuscar)
        {
            
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresGetAll", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (parametroBuscar == null)
                    {
                        parametroBuscar = "";
                    }
                    cmd.Parameters.Add("@parametroBuscar", SqlDbType.VarChar).Value = parametroBuscar;

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

        public int JugadorInsert(string nombre, string apellido, int tipoDoc, string nroDoc, DateTime fechanac, string dom, int loc, string imagenPath
            , string apodo, float peso, float estatura, string colegio, string telefono, string email, string ciudadania, string representante)
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
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = fechanac;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = loc;
                    cmd.Parameters.Add("@ImagenPath", SqlDbType.VarChar).Value = imagenPath;
                    cmd.Parameters.Add("@Apodo", SqlDbType.VarChar).Value = apodo;
                    cmd.Parameters.Add("@Peso", SqlDbType.Float).Value = peso;
                    cmd.Parameters.Add("@Estatura", SqlDbType.Float).Value = estatura;
                    cmd.Parameters.Add("@Colegio", SqlDbType.VarChar).Value = colegio;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = email;
                    cmd.Parameters.Add("@Ciudadania", SqlDbType.VarChar).Value = ciudadania;
                    cmd.Parameters.Add("@Representante", SqlDbType.VarChar).Value = representante;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }
        public void CoberturaMedicaInsert(int id, string ObraSocial, int NroObraSocial, string ServicioEmergencia, int NroServicioEmergencia, string Telefono,
            string Hospital, string Direccion, string Medicamento, string Alergico, string Observaciones)
        {
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("CoberturaMedicaInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    if (ObraSocial == null) ObraSocial = "";
                    if (ServicioEmergencia == null) ServicioEmergencia = "";
                    if (Telefono == null) Telefono = "";
                    if (Hospital == null) Hospital = "";
                    if (Direccion == null) Direccion = "";
                    if (Medicamento == null) Medicamento = "";
                    if (Alergico == null) Alergico = "";
                    if (Observaciones == null) Observaciones = "";


                    cmd.Parameters.Add("@IdJugador", SqlDbType.Int).Value = id;
                    cmd.Parameters.Add("@ObraSocial", SqlDbType.VarChar).Value = ObraSocial;
                    cmd.Parameters.Add("@NroObraSocial", SqlDbType.Int).Value = NroObraSocial;
                    cmd.Parameters.Add("@ServicioEmergencia", SqlDbType.VarChar).Value = ServicioEmergencia;
                    cmd.Parameters.Add("@NroServicioEmergencia", SqlDbType.Int).Value = NroServicioEmergencia;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = Telefono;
                    cmd.Parameters.Add("@Hospital", SqlDbType.VarChar).Value = Hospital;
                    cmd.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = Direccion;
                    cmd.Parameters.Add("@Medicamento", SqlDbType.VarChar).Value = Medicamento;
                    cmd.Parameters.Add("@Alergico", SqlDbType.VarChar).Value = Alergico;
                    cmd.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value = Observaciones;

                    con.Open();
                    cmd.ExecuteScalar();
                }
            }
        }
        

        public void DatosGeneralesJugadorInsert(int id, string otroEquipo, string quienLoTrajo, string nombreMadre, string telMadre, string ocupacionMadre, string trabajoMadre,
            string direccionTrabajoMadre, string telefonoTrabajoMadre, string nombrePadre, string telPadre, string ocupacionPadre, string trabajoPadre,
            string direccionTrabajoPadre, string telefonoTrabajoPadre, string padresConviven, int hermanos, string nombreResponsable, string ocupacionResponsable, string parentescoResponsable,
            string lesiones, string piernaHabil, string posicion)
        {
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("DatosGeneralesJugadorInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (otroEquipo == null) otroEquipo = "";
                    if (quienLoTrajo == null) quienLoTrajo = "";
                    if (nombreMadre == null) nombreMadre = "";
                    if (telMadre == null) telMadre = "";
                    if (ocupacionMadre == null) ocupacionMadre = "";
                    if (trabajoMadre == null) trabajoMadre = "";
                    if (direccionTrabajoMadre == null) direccionTrabajoMadre = "";
                    if (telefonoTrabajoMadre == null) telefonoTrabajoMadre = "";
                    if (nombrePadre == null) nombrePadre = "";
                    if (telPadre == null) telPadre = "";
                    if (ocupacionPadre == null) ocupacionPadre = "";
                    if (trabajoPadre == null) trabajoPadre = "";
                    if (direccionTrabajoPadre == null) direccionTrabajoPadre = "";
                    if (telefonoTrabajoPadre == null) telefonoTrabajoPadre = "";
                    if (padresConviven == null) padresConviven = "";
                    if (nombreResponsable == null) nombreResponsable = "";
                    if (ocupacionResponsable == null) ocupacionResponsable = "";
                    if (parentescoResponsable == null) parentescoResponsable = "";
                    if (lesiones == null) lesiones = "";
                    if (piernaHabil == null) piernaHabil = "";
                    if (posicion == null) posicion = "";


                    cmd.Parameters.Add("@IdJugador", SqlDbType.Int).Value = id;
                    cmd.Parameters.Add("@JuegaOtroLugar", SqlDbType.VarChar).Value = otroEquipo;
                    cmd.Parameters.Add("@QuienLoTrajo", SqlDbType.VarChar).Value = quienLoTrajo;
                    cmd.Parameters.Add("@NombreMadre", SqlDbType.VarChar).Value = nombreMadre;
                    cmd.Parameters.Add("@TelMadre", SqlDbType.VarChar).Value = telMadre;
                    cmd.Parameters.Add("@OcupacionMadre", SqlDbType.VarChar).Value = ocupacionMadre;
                    cmd.Parameters.Add("@TrabajoMadre", SqlDbType.VarChar).Value = trabajoMadre;
                    cmd.Parameters.Add("@DireccionTrabajoMadre", SqlDbType.VarChar).Value = direccionTrabajoMadre;
                    cmd.Parameters.Add("@TelefonoTrabajoMadre", SqlDbType.VarChar).Value = telefonoTrabajoMadre;
                    cmd.Parameters.Add("@NombrePadre", SqlDbType.VarChar).Value = nombrePadre;
                    cmd.Parameters.Add("@TelPadre", SqlDbType.VarChar).Value = telPadre;
                    cmd.Parameters.Add("@OcupacionPadre", SqlDbType.VarChar).Value = ocupacionPadre;
                    cmd.Parameters.Add("@TrabajoPadre", SqlDbType.VarChar).Value = trabajoPadre;
                    cmd.Parameters.Add("@DireccionTrabajoPadre", SqlDbType.VarChar).Value = direccionTrabajoPadre;
                    cmd.Parameters.Add("@TelefonoTrabajoPadre", SqlDbType.VarChar).Value = telefonoTrabajoPadre;
                    cmd.Parameters.Add("@PadresConviven", SqlDbType.VarChar).Value = padresConviven;
                    cmd.Parameters.Add("@Hermanos", SqlDbType.Int).Value = hermanos;
                    cmd.Parameters.Add("@NombreResponsable", SqlDbType.VarChar).Value = nombreResponsable;
                    cmd.Parameters.Add("@OcupacionResponsable", SqlDbType.VarChar).Value = ocupacionResponsable;
                    cmd.Parameters.Add("@ParentescoResponsable", SqlDbType.VarChar).Value = parentescoResponsable;
                    cmd.Parameters.Add("@Lesiones", SqlDbType.VarChar).Value = lesiones;
                    cmd.Parameters.Add("@PiernaHabil", SqlDbType.VarChar).Value = piernaHabil;
                    cmd.Parameters.Add("@Posicion", SqlDbType.VarChar).Value = posicion;

                    con.Open();
                    cmd.ExecuteScalar();
                }
            }
        }










        public int JugadorPorEquipoInsert(int jugadorId, int equipoId, DateTime fechaDesdeEquipo)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorEquipoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugadorId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = equipoId;
                    cmd.Parameters.Add("@FechaDesde", SqlDbType.DateTime).Value = fechaDesdeEquipo;
  
                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorPorEquipoDelete(int jugadorId, int equipoId, DateTime fechaHastaEquipo)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorEquipoDelete", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugadorId;
                    cmd.Parameters.Add("@EquipoId", SqlDbType.Int).Value = equipoId;
                    cmd.Parameters.Add("@FechaHasta", SqlDbType.DateTime).Value = fechaHastaEquipo;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorUpdate(int id, string nombre, string apellido, int tipoDoc, string nroDoc, string dom, int loc, DateTime fechaNac)
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
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = fechaNac;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.VarChar).Value = loc;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorUpdateFoto(int id, string nombre, string apellido, int tipoDoc, string nroDoc, string dom, int loc, DateTime fechaNac, string imagenPath)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorUpdateFoto", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.VarChar).Value = tipoDoc;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = nroDoc;
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = fechaNac;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = dom;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.VarChar).Value = loc;
                    cmd.Parameters.Add("@ImagenPath", SqlDbType.VarChar).Value = imagenPath;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public DataTable JugadoresSearch(int idEquipo, string nombre, string apellido)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresSearch", con))
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

        public DataTable JugadoresByEquipo(int idEquipo)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresByEquipo", con))
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
        public DataTable JugadoresByPartido(int idPartido)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresByPartido", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdPartido", SqlDbType.VarChar).Value = idPartido;

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
        public DataTable JugadorEquiposListHistorial(int jugadorId)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorEquiposListHistorico", con))
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

        public int JugadorPorPartidoInsert(int jugadorId, int partidoId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorPartidoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugadorId;
                    cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = partidoId;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorPorPartidoDelete(int jugadorId, int partidoId)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorPartidoDelete", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugadorId;
                    cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = partidoId;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public DataTable JugadoresSearchPartido(int idPartido, string nombre, string apellido)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresSearchPartido", con))
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

                    cmd.Parameters.Add("@idPartido", SqlDbType.VarChar).Value = idPartido;
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                    cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }
    }
}