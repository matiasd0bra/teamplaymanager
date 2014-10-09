using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;
using TPM.Models.ViewModel;

namespace TPM.Repositorio
{
    public class JugadoresRepo
    {
        public static List<Jugador> JugadoresGetAllRepo(string parametroBuscar)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresGetAll(parametroBuscar);

            Jugador jugador;
            List<Jugador> jugadorList = new List<Jugador>();


            foreach (DataRow item in dt.Rows)
            {
                jugador = new Jugador();

                jugador.Id = int.Parse(item["JugadorId"].ToString());
                jugador.Nombre = item["jNombre"].ToString();
                jugador.Apellido = item["Apellido"].ToString();
                jugador.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                jugador.TipoDocNombre = item["tdNombre"].ToString();
                jugador.NumeroDoc = item["NumeroDoc"].ToString();
                jugador.FechaNac = Convert.ToDateTime(item["FechaNac"].ToString());
                jugador.Domicilio = item["Domicilio"].ToString();
                jugador.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                //jugador.LocalidadNombre = item["LocalidadNombre"].ToString();
                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
                jugadorList.Add(jugador);
            }

            return jugadorList;
        }

        public static Jugador JugadorByIdRepo(int id)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadorById(id);

            Jugador jugador = new Jugador();

            jugador.Id = int.Parse(dt.Rows[0]["JugadorId"].ToString());
            jugador.Nombre = dt.Rows[0]["Nombre"].ToString();
            jugador.Apellido = dt.Rows[0]["Apellido"].ToString();
            jugador.TipoDocId = int.Parse(dt.Rows[0]["TipoDocId"].ToString());
            jugador.TipoDocNombre = dt.Rows[0]["TipoDocNombre"].ToString();
            jugador.NumeroDoc = dt.Rows[0]["NumeroDoc"].ToString();
            jugador.FechaNac = Convert.ToDateTime(dt.Rows[0]["FechaNac"].ToString());
            jugador.Domicilio = dt.Rows[0]["Domicilio"].ToString();
            jugador.LocalidadId = int.Parse(dt.Rows[0]["LocalidadId"].ToString());
            jugador.LocalidadNombre = dt.Rows[0]["NombreLocalidad"].ToString();
            jugador.ImagenPath = dt.Rows[0]["ImagenPath"].ToString();

            return jugador;
        }


        public static int JugadorInsert(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            int ret = jugadoresDal.JugadorInsert(jugador);
            jugador.Id = ret;
            jugadoresDal.DatosGeneralesJugadorInsert(jugador);
            jugadoresDal.CoberturaMedicaInsert(jugador);
            return ret;
        }

        public static int JugadorPorEquipoInsert(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorEquipoInsert(jugador.Id, jugador.EquipoId, jugador.FechaDesdeEquipo);


        }

        public static int JugadorPorEquipoDelete(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorEquipoDelete(jugador.Id, jugador.EquipoId, jugador.FechaHastaEquipo);
        }

        public static int JugadorUpdate(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorUpdate(jugador.Id, jugador.Nombre, jugador.Apellido, jugador.TipoDocId,
                jugador.NumeroDoc, jugador.Domicilio, jugador.LocalidadId, jugador.FechaNac);
        }

        public static int JugadorUpdateFoto(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return  jugadoresDal.JugadorUpdateFoto(jugador.Id, jugador.Nombre, jugador.Apellido, jugador.TipoDocId,
                jugador.NumeroDoc, jugador.Domicilio, jugador.LocalidadId, jugador.FechaNac, jugador.ImagenPath);
        }

        public static List<Jugador> JugadoresSearch(int idEquipo, string nombre, string apellido)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresSearch(idEquipo, nombre, apellido);

            Jugador jugador;
            List<Jugador> jugadorList = new List<Jugador>();


            foreach (DataRow item in dt.Rows)
            {
                jugador = new Jugador();

                jugador.Id = int.Parse(item["JugadorId"].ToString());
                jugador.Nombre = item["Nombre"].ToString();
                jugador.Apellido = item["Apellido"].ToString();
                jugador.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                jugador.TipoDocNombre = item["tdNombre"].ToString();
                jugador.NumeroDoc = item["NumeroDoc"].ToString();
                jugador.FechaNac = Convert.ToDateTime(item["FechaNac"].ToString());
                jugador.Domicilio = item["Domicilio"].ToString();
                jugador.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                //jugador.LocalidadNombre = item["LocalidadNombre"].ToString();
                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
                jugadorList.Add(jugador);
            }

            return jugadorList;
        }

        public static List<Jugador> JugadoresByEquipo(int IdEquipo)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresByEquipo(IdEquipo);

            Jugador jugador;
            List<Jugador> jugadorList = new List<Jugador>();


            foreach (DataRow item in dt.Rows)
            {
                jugador = new Jugador();

                jugador.Id = int.Parse(item["JugadorId"].ToString());
                jugador.Nombre = item["Nombre"].ToString();
                jugador.Apellido = item["Apellido"].ToString();
                jugador.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                jugador.TipoDocNombre = item["tdNombre"].ToString();
                jugador.NumeroDoc = item["NumeroDoc"].ToString();
                jugador.FechaNac = Convert.ToDateTime(item["FechaNac"].ToString());
                jugador.Domicilio = item["Domicilio"].ToString();
                jugador.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                //jugador.LocalidadNombre = item["LocalidadNombre"].ToString();
                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
                jugadorList.Add(jugador);
            }

            return jugadorList;
        }
        public static List<Jugador> JugadoresByPartido(int IdPartido, string Titular)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresByPartido(IdPartido,Titular);

            Jugador jugador;
            List<Jugador> jugadorList = new List<Jugador>();


            foreach (DataRow item in dt.Rows)
            {
                jugador = new Jugador();

                jugador.Id = int.Parse(item["JugadorId"].ToString());
                jugador.Nombre = item["Nombre"].ToString();
                jugador.Apellido = item["Apellido"].ToString();
                jugador.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                jugador.TipoDocNombre = item["tdNombre"].ToString();
                jugador.NumeroDoc = item["NumeroDoc"].ToString();
                jugador.FechaNac = Convert.ToDateTime(item["FechaNac"].ToString());
                jugador.Domicilio = item["Domicilio"].ToString();
                jugador.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                //jugador.LocalidadNombre = item["LocalidadNombre"].ToString();
                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
                jugador.NombreApellido = jugador.Apellido.ToUpper() + " " + jugador.Nombre;
                jugador.Posicion = item["Posicion"].ToString();
                jugador.NumeroSuplentes = dt.Rows.IndexOf(item) + 12;
                jugadorList.Add(jugador);
            }

            return jugadorList;
        }
        public static List<HistorialEquiposJugador> JugadorEquiposList(int jugadorId)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadorEquiposList(jugadorId);

            HistorialEquiposJugador historial = new HistorialEquiposJugador();
            List<HistorialEquiposJugador> historialList = new List<HistorialEquiposJugador>();

            foreach (DataRow item in dt.Rows)
            {
                historial = new HistorialEquiposJugador();
                historial.Equipo = new Equipo();

                historial.Equipo.NombreEquipo = item["NombreEquipo"].ToString();
                historial.FechaDesdeHistorial = Convert.ToDateTime(item["FechaDesde"].ToString());

                historialList.Add(historial);
            }

            return historialList;
        }
        public static List<HistorialEquiposJugador> JugadorEquiposListHistorico(int jugadorId)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadorEquiposListHistorial(jugadorId);

            HistorialEquiposJugador historial = new HistorialEquiposJugador();
            List<HistorialEquiposJugador> historialList = new List<HistorialEquiposJugador>();

            foreach (DataRow item in dt.Rows)
            {
                historial = new HistorialEquiposJugador();
                historial.Equipo = new Equipo();

                historial.Equipo.NombreEquipo = item["NombreEquipo"].ToString();
                historial.FechaDesdeHistorial = Convert.ToDateTime(item["FechaDesde"].ToString());
                historial.FechaHastaHistorial = Convert.ToDateTime(item["FechaHasta"].ToString());

                historialList.Add(historial);
            }
            return historialList;
        }

        public static int JugadorPorPartidoInsert(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorPartidoInsert(jugador);
        }
        public static int JugadorPorPartidoDelete(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorPartidoDelete(jugador.Id, jugador.PartidoId);
        }

        public static List<Jugador> JugadoresSearchPartido(int idPartido, int idEquipo, string nombre, string apellido, string categoria, string equiposFiltro, string posicionFiltro)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresSearchPartido(idPartido, idEquipo, nombre, apellido, categoria, equiposFiltro, posicionFiltro);

            Jugador jugador;
            List<Jugador> jugadorList = new List<Jugador>();


            foreach (DataRow item in dt.Rows)
            {
                jugador = new Jugador();

                jugador.Id = int.Parse(item["JugadorId"].ToString());
                jugador.Nombre = item["Nombre"].ToString();
                jugador.Apellido = item["Apellido"].ToString();
                jugador.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                jugador.TipoDocNombre = item["tdNombre"].ToString();
                jugador.NumeroDoc = item["NumeroDoc"].ToString();
                jugador.FechaNac = Convert.ToDateTime(item["FechaNac"].ToString());
                jugador.Domicilio = item["Domicilio"].ToString();
                jugador.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                jugador.Categoria = int.Parse(item["Categoria"].ToString());
                jugador.Posicion = item["Posicion"].ToString();
                jugador.FechaNacFormateada = jugador.FechaNac.ToShortDateString();
                jugadorList.Add(jugador);
            }

            return jugadorList;
        }
    }
}

    //@Nombre nvarchar(50)
    //,@Apellido nvarchar(50)
    //,@TipoDocId int
    //,@NumeroDoc int
    //,@Domicilio nvarchar(50)
    //,@LocalidadId int