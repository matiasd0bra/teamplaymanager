using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class JugadoresRepo
    {
        public static List<Jugador> JugadoresGetAllRepo()
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadoresGetAll();

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
            return jugadoresDal.JugadorInsert(jugador.Nombre, jugador.Apellido, jugador.TipoDocId, jugador.NumeroDoc, jugador.FechaNac,
                jugador.Domicilio, jugador.LocalidadId, jugador.ImagenPath);


        }

        public static int JugadorPorEquipoInsert(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorEquipoInsert(jugador.Id, jugador.EquipoId);


        }

        public static int JugadorPorEquipoDelete(Jugador jugador)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            return jugadoresDal.JugadorPorEquipoDelete(jugador.Id, jugador.EquipoId);
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
    }
}

    //@Nombre nvarchar(50)
    //,@Apellido nvarchar(50)
    //,@TipoDocId int
    //,@NumeroDoc int
    //,@Domicilio nvarchar(50)
    //,@LocalidadId int