using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Microsoft.Ajax.Utilities;
using TPM.Models;

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

        public int JugadorInsert(Jugador jugador)
        {
            int ret = 0;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (jugador.Apodo == null) jugador.Apodo = "";
                    if (jugador.Posicion == null) jugador.Posicion = "";
                    if (jugador.Colegio == null) jugador.Colegio = "";
                    if (jugador.CiudadaniaEuropea == null) jugador.CiudadaniaEuropea = "";
                    if (jugador.Representante == null) jugador.Representante = "";

                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = jugador.Nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = jugador.Apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.Int).Value = jugador.TipoDocId;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = jugador.NumeroDoc;
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = jugador.FechaNac;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = jugador.Domicilio;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = jugador.LocalidadId;
                    cmd.Parameters.Add("@CategoriaId", SqlDbType.Int).Value = jugador.Categoria;
                    cmd.Parameters.Add("@ImagenPath", SqlDbType.VarChar).Value = jugador.ImagenPath;
                    cmd.Parameters.Add("@Apodo", SqlDbType.VarChar).Value = jugador.Apodo;
                    cmd.Parameters.Add("@Peso", SqlDbType.Float).Value = jugador.Peso;
                    cmd.Parameters.Add("@Estatura", SqlDbType.Float).Value = jugador.Estatura;
                    cmd.Parameters.Add("@Colegio", SqlDbType.VarChar).Value = jugador.Colegio;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = jugador.Telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = jugador.Email;
                    cmd.Parameters.Add("@Ciudadania", SqlDbType.VarChar).Value = jugador.CiudadaniaEuropea;
                    cmd.Parameters.Add("@Representante", SqlDbType.VarChar).Value = jugador.Representante;
                    cmd.Parameters.Add("@Posicion", SqlDbType.VarChar).Value = jugador.Posicion;
                    cmd.Parameters.Add("@PiernaHabil", SqlDbType.VarChar).Value = jugador.PiernaHabil;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }
        
        


        public void CoberturaMedicaInsert(Jugador jugador)
        {
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand command = new SqlCommand("CoberturaMedicaInsert", con))
                {

                    command.CommandType = CommandType.StoredProcedure;

                    if (jugador.CoberturaMedica.ObraSocial == null) jugador.CoberturaMedica.ObraSocial = "";
                    if (jugador.CoberturaMedica.ServicioEmergencia == null)jugador.CoberturaMedica.ServicioEmergencia = "";
                    if (jugador.CoberturaMedica.Telefono == null) jugador.CoberturaMedica.Telefono = "";
                    if (jugador.CoberturaMedica.Hospital == null) jugador.CoberturaMedica.Hospital = "";
                    if (jugador.CoberturaMedica.Direccion == null) jugador.CoberturaMedica.Direccion = "";
                    if (jugador.CoberturaMedica.Medicamento == null) jugador.CoberturaMedica.Medicamento = "";
                    if (jugador.CoberturaMedica.Alergico == null) jugador.CoberturaMedica.Alergico = "";
                    if (jugador.CoberturaMedica.Observaciones == null) jugador.CoberturaMedica.Observaciones = "";


                    command.Parameters.Add("@IdJugador", SqlDbType.Int).Value = jugador.Id;
                    command.Parameters.Add("@ObraSocial", SqlDbType.VarChar).Value =jugador.CoberturaMedica.ObraSocial;
                    command.Parameters.Add("@NroObraSocial", SqlDbType.Int).Value =jugador.CoberturaMedica.NroObraSocial;
                    command.Parameters.Add("@ServicioEmergencia", SqlDbType.VarChar).Value =jugador.CoberturaMedica.ServicioEmergencia;
                    command.Parameters.Add("@NroServicioEmergencia", SqlDbType.Int).Value =jugador.CoberturaMedica.NroServicioEmergencia;
                    command.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Telefono;
                    command.Parameters.Add("@Hospital", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Hospital;
                    command.Parameters.Add("@Direccion", SqlDbType.VarChar).Value =jugador.CoberturaMedica.Direccion;
                    command.Parameters.Add("@Medicamento", SqlDbType.VarChar).Value =jugador.CoberturaMedica.Medicamento;
                    command.Parameters.Add("@Alergico", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Alergico;
                    command.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value =jugador.CoberturaMedica.Observaciones;

                    con.Open();
                    command.ExecuteScalar();
                }
            }
        }
        

        public void DatosGeneralesJugadorInsert(Jugador jugador)
        {
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand command = new SqlCommand("DatosGeneralesJugadorInsert", con))
                {

                    command.CommandType = CommandType.StoredProcedure;

                    if (jugador.DatosGenerales.JuegaOtroEquipo == null) jugador.DatosGenerales.JuegaOtroEquipo = "";
                    if (jugador.DatosGenerales.QuieLoTrajo == null) jugador.DatosGenerales.QuieLoTrajo = "";
                    if (jugador.DatosGenerales.NombreMadre == null) jugador.DatosGenerales.NombreMadre = "";
                    if (jugador.DatosGenerales.TelMadre == null) jugador.DatosGenerales.TelMadre = "";
                    if (jugador.DatosGenerales.OcupacionMadre == null) jugador.DatosGenerales.OcupacionMadre = "";
                    if (jugador.DatosGenerales.TrabajoMadre == null) jugador.DatosGenerales.TrabajoMadre = "";
                    if (jugador.DatosGenerales.DireccionTrabajoMadre == null)jugador.DatosGenerales.DireccionTrabajoMadre = "";
                    if (jugador.DatosGenerales.TelefonoTrabajoMadre == null)jugador.DatosGenerales.TelefonoTrabajoMadre = "";
                    if (jugador.DatosGenerales.NombrePadre == null) jugador.DatosGenerales.NombrePadre = "";
                    if (jugador.DatosGenerales.TelPadre == null) jugador.DatosGenerales.TelPadre = "";
                    if (jugador.DatosGenerales.OcupacionPadre == null) jugador.DatosGenerales.OcupacionPadre = "";
                    if (jugador.DatosGenerales.TrabajoPadre == null) jugador.DatosGenerales.TrabajoPadre = "";
                    if (jugador.DatosGenerales.DireccionTrabajoPadre == null) jugador.DatosGenerales.DireccionTrabajoPadre = "";
                    if (jugador.DatosGenerales.TelefonoTrabajoPadre == null) jugador.DatosGenerales.TelefonoTrabajoPadre = "";
                    if (jugador.DatosGenerales.PadresConviven == null) jugador.DatosGenerales.PadresConviven = "";
                    if (jugador.DatosGenerales.NombreResponsable == null)   jugador.DatosGenerales.NombreResponsable = "";
                    if (jugador.DatosGenerales.OcupacionResponsable == null)  jugador.DatosGenerales.OcupacionResponsable = "";
                    if (jugador.DatosGenerales.ParentescoResponsable == null) jugador.DatosGenerales.ParentescoResponsable = "";
                    if (jugador.DatosGenerales.Lesiones == null) jugador.DatosGenerales.Lesiones = "";


                    command.Parameters.Add("@IdJugador", SqlDbType.Int).Value = jugador.Id;
                    command.Parameters.Add("@JuegaOtroLugar", SqlDbType.VarChar).Value = jugador.DatosGenerales.JuegaOtroEquipo;
                    command.Parameters.Add("@QuienLoTrajo", SqlDbType.VarChar).Value =  jugador.DatosGenerales.QuieLoTrajo;
                    command.Parameters.Add("@NombreMadre", SqlDbType.VarChar).Value =jugador.DatosGenerales.NombreMadre;
                    command.Parameters.Add("@TelMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelMadre;
                    command.Parameters.Add("@OcupacionMadre", SqlDbType.VarChar).Value =  jugador.DatosGenerales.OcupacionMadre;
                    command.Parameters.Add("@TrabajoMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TrabajoMadre;
                    command.Parameters.Add("@DireccionTrabajoMadre", SqlDbType.VarChar).Value =  jugador.DatosGenerales.DireccionTrabajoMadre;
                    command.Parameters.Add("@TelefonoTrabajoMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelefonoTrabajoMadre;
                    command.Parameters.Add("@NombrePadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.NombrePadre;
                    command.Parameters.Add("@TelPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelPadre;
                    command.Parameters.Add("@OcupacionPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.OcupacionPadre;
                    command.Parameters.Add("@TrabajoPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TrabajoPadre;
                    command.Parameters.Add("@DireccionTrabajoPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.DireccionTrabajoPadre;
                    command.Parameters.Add("@TelefonoTrabajoPadre", SqlDbType.VarChar).Value =  jugador.DatosGenerales.TelefonoTrabajoPadre;
                    command.Parameters.Add("@PadresConviven", SqlDbType.VarChar).Value =  jugador.DatosGenerales.PadresConviven;
                    command.Parameters.Add("@Hermanos", SqlDbType.Int).Value = jugador.DatosGenerales.Hermanos;
                    command.Parameters.Add("@NombreResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.NombreResponsable;
                    command.Parameters.Add("@OcupacionResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.OcupacionResponsable;
                    command.Parameters.Add("@ParentescoResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.ParentescoResponsable;
                    command.Parameters.Add("@Lesiones", SqlDbType.VarChar).Value = jugador.DatosGenerales.Lesiones;

                    con.Open();
                    command.ExecuteScalar();
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

        public int JugadorUpdate(Jugador jugador)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (jugador.Apodo == null) jugador.Apodo = "";
                    if (jugador.Posicion == null) jugador.Posicion = "";
                    if (jugador.Colegio == null) jugador.Colegio = "";
                    if (jugador.CiudadaniaEuropea == null) jugador.CiudadaniaEuropea = "";
                    if (jugador.Representante == null) jugador.Representante = "";

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = jugador.Id;
                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = jugador.Nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = jugador.Apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.Int).Value = jugador.TipoDocId;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = jugador.NumeroDoc;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = jugador.Domicilio;
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = jugador.FechaNac;
                    cmd.Parameters.Add("@CategoriaId", SqlDbType.Int).Value = jugador.Categoria;
                    cmd.Parameters.Add("@Apodo", SqlDbType.VarChar).Value = jugador.Apodo;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = jugador.Telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = jugador.Email;
                    cmd.Parameters.Add("@Peso", SqlDbType.Int).Value = jugador.Peso;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = jugador.LocalidadId;
                    cmd.Parameters.Add("@Estatura", SqlDbType.Int).Value = jugador.Estatura;
                    cmd.Parameters.Add("@Posicion", SqlDbType.VarChar).Value = jugador.Posicion;
                    cmd.Parameters.Add("@PiernaHabil", SqlDbType.VarChar).Value = jugador.PiernaHabil;
                    cmd.Parameters.Add("@Colegio", SqlDbType.VarChar).Value = jugador.Colegio;
                    cmd.Parameters.Add("@Ciudadania", SqlDbType.Char).Value = jugador.CiudadaniaEuropea;
                    cmd.Parameters.Add("@Reperesentante", SqlDbType.Char).Value = jugador.Representante;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int CoberturaMedicaUpdate(Jugador jugador)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("CoberturaMedicaUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (jugador.CoberturaMedica.ObraSocial == null) jugador.CoberturaMedica.ObraSocial = "";
                    if (jugador.CoberturaMedica.ServicioEmergencia == null) jugador.CoberturaMedica.ServicioEmergencia = "";
                    if (jugador.CoberturaMedica.Telefono == null) jugador.CoberturaMedica.Telefono = "";
                    if (jugador.CoberturaMedica.Hospital == null) jugador.CoberturaMedica.Hospital = "";
                    if (jugador.CoberturaMedica.Direccion == null) jugador.CoberturaMedica.Direccion = "";
                    if (jugador.CoberturaMedica.Medicamento == null) jugador.CoberturaMedica.Medicamento = "";
                    if (jugador.CoberturaMedica.Alergico == null) jugador.CoberturaMedica.Alergico = "";
                    if (jugador.CoberturaMedica.Observaciones == null) jugador.CoberturaMedica.Observaciones = "";

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = jugador.Id;
                    cmd.Parameters.Add("@ObraSocial", SqlDbType.VarChar).Value = jugador.CoberturaMedica.ObraSocial;
                    cmd.Parameters.Add("@NroObraSocial", SqlDbType.Int).Value = jugador.CoberturaMedica.NroObraSocial;
                    cmd.Parameters.Add("@ServicioEmergencia", SqlDbType.VarChar).Value = jugador.CoberturaMedica.ServicioEmergencia;
                    cmd.Parameters.Add("@NumeroServicio", SqlDbType.Int).Value = jugador.CoberturaMedica.NroServicioEmergencia;
                    cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Telefono;
                    cmd.Parameters.Add("@Hospital", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Hospital;
                    cmd.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Direccion;
                    cmd.Parameters.Add("@Medicamento", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Medicamento;
                    cmd.Parameters.Add("@Alergico", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Alergico;
                    cmd.Parameters.Add("@Observaciones", SqlDbType.VarChar).Value = jugador.CoberturaMedica.Observaciones;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int DatosGeneralesJugadorUpdate(Jugador jugador)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("DatosGeneralesJugadorUpdate", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    if (jugador.DatosGenerales.JuegaOtroEquipo == null) jugador.DatosGenerales.JuegaOtroEquipo = "";
                    if (jugador.DatosGenerales.QuieLoTrajo == null) jugador.DatosGenerales.QuieLoTrajo = "";
                    if (jugador.DatosGenerales.NombreMadre == null) jugador.DatosGenerales.NombreMadre = "";
                    if (jugador.DatosGenerales.TelMadre == null) jugador.DatosGenerales.TelMadre = "";
                    if (jugador.DatosGenerales.OcupacionMadre == null) jugador.DatosGenerales.OcupacionMadre = "";
                    if (jugador.DatosGenerales.TrabajoMadre == null) jugador.DatosGenerales.TrabajoMadre = "";
                    if (jugador.DatosGenerales.DireccionTrabajoMadre == null) jugador.DatosGenerales.DireccionTrabajoMadre = "";
                    if (jugador.DatosGenerales.TelefonoTrabajoMadre == null) jugador.DatosGenerales.TelefonoTrabajoMadre = "";
                    if (jugador.DatosGenerales.NombrePadre == null) jugador.DatosGenerales.NombrePadre = "";
                    if (jugador.DatosGenerales.TelPadre == null) jugador.DatosGenerales.TelPadre = "";
                    if (jugador.DatosGenerales.OcupacionPadre == null) jugador.DatosGenerales.OcupacionPadre = "";
                    if (jugador.DatosGenerales.TrabajoPadre == null) jugador.DatosGenerales.TrabajoPadre = "";
                    if (jugador.DatosGenerales.DireccionTrabajoPadre == null) jugador.DatosGenerales.DireccionTrabajoPadre = "";
                    if (jugador.DatosGenerales.TelefonoTrabajoPadre == null) jugador.DatosGenerales.TelefonoTrabajoPadre = "";
                    if (jugador.DatosGenerales.PadresConviven == null) jugador.DatosGenerales.PadresConviven = "";
                    if (jugador.DatosGenerales.NombreResponsable == null) jugador.DatosGenerales.NombreResponsable = "";
                    if (jugador.DatosGenerales.OcupacionResponsable == null) jugador.DatosGenerales.OcupacionResponsable = "";
                    if (jugador.DatosGenerales.ParentescoResponsable == null) jugador.DatosGenerales.ParentescoResponsable = "";
                    if (jugador.DatosGenerales.Lesiones == null) jugador.DatosGenerales.Lesiones = "";

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = jugador.Id;
                    cmd.Parameters.Add("@JuegaOtroLugar", SqlDbType.VarChar).Value = jugador.DatosGenerales.JuegaOtroEquipo;
                    cmd.Parameters.Add("@QuienLoTrajo", SqlDbType.VarChar).Value = jugador.DatosGenerales.QuieLoTrajo;
                    cmd.Parameters.Add("@NombreMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.NombreMadre;
                    cmd.Parameters.Add("@TelMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelMadre;
                    cmd.Parameters.Add("@OcupacionMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.OcupacionMadre;
                    cmd.Parameters.Add("@TrabajoMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TrabajoMadre;
                    cmd.Parameters.Add("@DireccionTrabajoMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.DireccionTrabajoMadre;
                    cmd.Parameters.Add("@TelefonoTrabajoMadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelefonoTrabajoMadre;
                    cmd.Parameters.Add("@NombrePadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.NombrePadre;
                    cmd.Parameters.Add("@TelPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelPadre;
                    cmd.Parameters.Add("@OcupacionPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.OcupacionPadre;
                    cmd.Parameters.Add("@TrabajoPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TrabajoPadre;
                    cmd.Parameters.Add("@DireccionTrabajoPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.DireccionTrabajoPadre;
                    cmd.Parameters.Add("@TelefonoTrabajoPadre", SqlDbType.VarChar).Value = jugador.DatosGenerales.TelefonoTrabajoPadre;
                    cmd.Parameters.Add("@PadresConviven", SqlDbType.VarChar).Value = jugador.DatosGenerales.PadresConviven;
                    cmd.Parameters.Add("@Hermanos", SqlDbType.Int).Value = jugador.DatosGenerales.Hermanos;
                    cmd.Parameters.Add("@NombreResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.NombreResponsable;
                    cmd.Parameters.Add("@OcupacionResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.OcupacionResponsable;
                    cmd.Parameters.Add("@ParentescoResponsable", SqlDbType.VarChar).Value = jugador.DatosGenerales.ParentescoResponsable;
                    cmd.Parameters.Add("@Lesiones", SqlDbType.VarChar).Value = jugador.DatosGenerales.Lesiones;
;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorUpdateFoto(Jugador jugador)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorUpdateFoto", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.VarChar).Value = jugador.Id;
                    cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = jugador.Nombre;
                    cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = jugador.Apellido;
                    cmd.Parameters.Add("@TipoDocId", SqlDbType.VarChar).Value = jugador.TipoDocId;
                    cmd.Parameters.Add("@NumeroDoc", SqlDbType.VarChar).Value = jugador.NumeroDoc;
                    cmd.Parameters.Add("@FechaNac", SqlDbType.DateTime).Value = jugador.FechaNacFormateada;
                    cmd.Parameters.Add("@Domicilio", SqlDbType.VarChar).Value = jugador.Domicilio;
                    cmd.Parameters.Add("@LocalidadId", SqlDbType.Int).Value = jugador.LocalidadId;
                    cmd.Parameters.Add("@Apodo", SqlDbType.VarChar).Value = jugador.Telefono;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = jugador.Email;
                    cmd.Parameters.Add("@Peso", SqlDbType.Int).Value = jugador.Peso;
                    cmd.Parameters.Add("@Estatura", SqlDbType.Int).Value = jugador.Estatura;
                    cmd.Parameters.Add("@Posicion", SqlDbType.VarChar).Value = jugador.Posicion;
                    cmd.Parameters.Add("@PiernaHabil", SqlDbType.VarChar).Value = jugador.PiernaHabil;
                    cmd.Parameters.Add("@Colegio", SqlDbType.VarChar).Value = jugador.Colegio;
                    cmd.Parameters.Add("@Ciudadania", SqlDbType.Char).Value = jugador.CiudadaniaEuropea;
                    cmd.Parameters.Add("@Reperesentante", SqlDbType.Char).Value = jugador.Representante;
                    cmd.Parameters.Add("@ImagenPath", SqlDbType.VarChar).Value = jugador.ImagenPath;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public int JugadorDelete(int id)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorDelete", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    
                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;             

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
        public DataTable JugadoresByPartido(int idPartido, string Titular)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresByPartido", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdPartido", SqlDbType.Int).Value = idPartido;
                    cmd.Parameters.Add("@Titular", SqlDbType.VarChar).Value = Titular;

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
                using (SqlCommand cmd = new SqlCommand("JugadoresByPartidoAll", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdPartido", SqlDbType.Int).Value = idPartido;

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

        public int JugadorPorPartidoInsert(Jugador jugador)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorPorPartidoInsert", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@JugadorId", SqlDbType.Int).Value = jugador.Id;
                    cmd.Parameters.Add("@PartidoId", SqlDbType.Int).Value = jugador.PartidoId;
                    cmd.Parameters.Add("@Titular", SqlDbType.VarChar).Value = jugador.Titular;
                    cmd.Parameters.Add("@NumeroCamiseta", SqlDbType.VarChar).Value = jugador.NumeroCamiseta;

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

        public DataTable JugadoresSearchPartido(int idPartido, int idEquipo, string nombre, string apellido, string categoria, string equiposFiltro, string posicionFiltro)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                if (equiposFiltro == "on")
                {
                    using (SqlCommand cmd = new SqlCommand("JugadoresSearchPartidoTodosEquipos", con))
                    {
                        if (nombre == null)
                        {
                            nombre = "";
                        }
                        if (apellido == null)
                        {
                            apellido = "";
                        }
                        if (categoria == null)
                        {
                            categoria = "";
                        }
                        if (posicionFiltro == null)
                        {
                            posicionFiltro = "";
                        }
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@idPartido", SqlDbType.VarChar).Value = idPartido;
                        cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                        cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;
                        cmd.Parameters.Add("@categoria", SqlDbType.VarChar).Value = categoria;
                        cmd.Parameters.Add("@posicion", SqlDbType.VarChar).Value = posicionFiltro;

                        con.Open();
                        sqlDataReader = cmd.ExecuteReader();
                        dt.Load(sqlDataReader);
                    }
                }
                else
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
                        if (categoria == null)
                        {
                            categoria = "";
                        }
                        if (posicionFiltro == null)
                        {
                            posicionFiltro = "";
                        }
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.Add("@idPartido", SqlDbType.VarChar).Value = idPartido;
                        cmd.Parameters.Add("@idEquipo", SqlDbType.VarChar).Value = idEquipo;
                        cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = nombre;
                        cmd.Parameters.Add("@apellido", SqlDbType.VarChar).Value = apellido;
                        cmd.Parameters.Add("@categoria", SqlDbType.VarChar).Value = categoria;
                        cmd.Parameters.Add("@posicion", SqlDbType.VarChar).Value = posicionFiltro;

                        con.Open();
                        sqlDataReader = cmd.ExecuteReader();
                        dt.Load(sqlDataReader);
                    }
                }
            }
            return dt;
        }

        public DataTable GolesJugadoresByPartido(int id)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("GolesJugadoresByPartido", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@IdPartido", SqlDbType.VarChar).Value = id;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public DataTable EstadisticasPartidoByJugadorId(Jugador jugador)
        {
            var dt = new DataTable();
            SqlDataReader sqlDataReader;
            
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EstadisticasPartidoByJugadorId", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = jugador.Id;

                    con.Open();
                    sqlDataReader = cmd.ExecuteReader();
                    dt.Load(sqlDataReader);
                }
            }
            return dt;
        }

        public int EstadisticasGolesByJugadorId(int id)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("EstadisticasGolesByJugadorId", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;

                    con.Open();
                    ret = int.Parse(cmd.ExecuteScalar().ToString());
                }
            }
            return ret;
        }

        public int JugadorAlta(int id)
        {
            int ret;
            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadorAltaNuevamente", con))
                {

                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;

                    con.Open();
                    ret = cmd.ExecuteNonQuery();
                }
            }
            return ret;
        }

        public DataTable JugadoresEliminadosGetAll(string parametroBuscar)
        {

            var dt = new DataTable();
            SqlDataReader sqlDataReader;

            using (SqlConnection con = new SqlConnection(HelperDal.GetConnection()))
            {
                using (SqlCommand cmd = new SqlCommand("JugadoresEliminadosGetAll", con))
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
    }
}