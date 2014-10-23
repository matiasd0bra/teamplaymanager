using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class PersonalEspRepo
    {
        public static List<PersonalEsp> PersonalEspesGetAllRepo(string parametroBuscar)
        {
            PersonalEspDAL personalEspesDal = new PersonalEspDAL();
            DataTable dt = personalEspesDal.PersonalEspGetAll(parametroBuscar);

            PersonalEsp personalEsp;
            List<PersonalEsp> personalEspList = new List<PersonalEsp>();


            foreach (DataRow item in dt.Rows)
            {
                personalEsp = new PersonalEsp();

                personalEsp.Id = int.Parse(item["PersonalEspId"].ToString());
                personalEsp.Nombre = item["Nombre"].ToString();
                personalEsp.Apellido = item["Apellido"].ToString();
                personalEsp.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                personalEsp.TipoDocNombre = item["TipoDocNombre"].ToString();
                personalEsp.NumeroDoc = item["NumeroDoc"].ToString();
                personalEsp.Domicilio = item["Domicilio"].ToString();
                personalEsp.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                personalEsp.LocalidadNombre = item["LocalidadNombre"].ToString();
                personalEsp.EspecialidadNombre = item["EspecialidadNombre"].ToString();
                personalEspList.Add(personalEsp);
            }

            return personalEspList;
        }

        public static PersonalEsp PersonalEspByIdRepo(int id)
        {
            PersonalEspDAL personalEspDAL = new PersonalEspDAL();
            DataTable dt = personalEspDAL.PersonalEspById(id);

            PersonalEsp personalEsp = new PersonalEsp();

            personalEsp.Id = int.Parse(dt.Rows[0]["PersonalEspId"].ToString());
            personalEsp.Nombre = dt.Rows[0]["Nombre"].ToString();
            personalEsp.Apellido = dt.Rows[0]["Apellido"].ToString();
            personalEsp.TipoDocId = int.Parse(dt.Rows[0]["TipoDocId"].ToString());
            personalEsp.TipoDocNombre = dt.Rows[0]["TipoDocNombre"].ToString();
            personalEsp.NumeroDoc = dt.Rows[0]["NumeroDoc"].ToString();
            personalEsp.Domicilio = dt.Rows[0]["Domicilio"].ToString();
            personalEsp.LocalidadId = int.Parse(dt.Rows[0]["LocalidadId"].ToString());
            personalEsp.EspecialidadId = int.Parse(dt.Rows[0]["EspecialidadId"].ToString());
            personalEsp.LocalidadNombre = dt.Rows[0]["NombreLocalidad"].ToString();
            personalEsp.EspecialidadNombre = dt.Rows[0]["EspecialidadNombre"].ToString();
            personalEsp.Telefono = dt.Rows[0]["Telefono"].ToString();
            personalEsp.Email = dt.Rows[0]["Email"].ToString();
            
            return personalEsp;
        }


        public static int PersonalEspInsert(PersonalEsp PersonalEsp)
        {
            PersonalEspDAL PersonalEspesDal = new PersonalEspDAL();
            return PersonalEspesDal.PersonalEspInsert(PersonalEsp);


        }

        public static int PersonalEspPorEquipoInsert(PersonalEsp PersonalEsp)
        {
            PersonalEspDAL PersonalEspesDal = new PersonalEspDAL();
            return PersonalEspesDal.PersonalEspPorEquipoInsert(PersonalEsp.Id, PersonalEsp.EquipoId);
        }
        public static int PersonalEspPorEquipoDelete(PersonalEsp PersonalEsp)
        {
            PersonalEspDAL PersonalEspesDal = new PersonalEspDAL();
            return PersonalEspesDal.PersonalEspPorEquipoDelete(PersonalEsp.Id, PersonalEsp.EquipoId);
        }

        public static int PersonalEspUpdate(PersonalEsp PersonalEsp)
        {
            PersonalEspDAL PersonalEspesDal = new PersonalEspDAL();
            return PersonalEspesDal.PersonalEspUpdate(PersonalEsp);
        }

        public static int PersonalEspDelete(int id)
        {
            PersonalEspDAL PersonalEspesDal = new PersonalEspDAL();
            return PersonalEspesDal.PersonalEspDelete(id);
        }

        public static List<PersonalEsp> PersonalSearch(int idEquipo, string nombre, string apellido)
        {
            PersonalEspDAL personalDal = new PersonalEspDAL();
            DataTable dt = personalDal.PersonalSearch(idEquipo, nombre, apellido);

            PersonalEsp personalEsp;
            List<PersonalEsp> personalList = new List<PersonalEsp>();


            foreach (DataRow item in dt.Rows)
            {
                personalEsp = new PersonalEsp();

                personalEsp.Id = int.Parse(item["PersonalEspId"].ToString());
                personalEsp.Nombre = item["Nombre"].ToString();
                personalEsp.Apellido = item["Apellido"].ToString();
                personalEsp.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                personalEsp.TipoDocNombre = item["NombreDoc"].ToString();
                personalEsp.NumeroDoc = item["NumeroDoc"].ToString();
                personalEsp.Domicilio = item["Domicilio"].ToString();
                personalEsp.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                personalEsp.EspecialidadNombre = item["EspecialidadNombre"].ToString();
                personalList.Add(personalEsp);
            }

            return personalList;
        }

        public static List<PersonalEsp> PersonalByEquipo(int IdEquipo)
        {
            PersonalEspDAL personalDal = new PersonalEspDAL();
            DataTable dt = personalDal.PersonalByEquipo(IdEquipo);

            PersonalEsp personalEsp;
            List<PersonalEsp> personalList = new List<PersonalEsp>();


            foreach (DataRow item in dt.Rows)
            {
                personalEsp = new PersonalEsp();

                personalEsp.Id = int.Parse(item["PersonalEspId"].ToString());
                personalEsp.Nombre = item["Nombre"].ToString();
                personalEsp.Apellido = item["Apellido"].ToString();
                personalEsp.TipoDocId = int.Parse(item["TipoDocId"].ToString());
                personalEsp.TipoDocNombre = item["NombreDoc"].ToString();
                personalEsp.NumeroDoc = item["NumeroDoc"].ToString();
                personalEsp.Domicilio = item["Domicilio"].ToString();
                personalEsp.LocalidadId = int.Parse(item["LocalidadId"].ToString());
                personalEsp.EspecialidadNombre = item["EspecialidadNombre"].ToString();
                personalList.Add(personalEsp);
            }

            return personalList;
        }
        public static List<Equipo> JugadorEquiposList(int jugadorId)
        {
            JugadoresDAL jugadoresDal = new JugadoresDAL();
            DataTable dt = jugadoresDal.JugadorEquiposList(jugadorId);

            Equipo equipo;
            List<Equipo> EquipoList = new List<Equipo>();


            foreach (DataRow item in dt.Rows)
            {
                equipo = new Equipo();

                equipo.NombreEquipo = item["NombreEquipo"].ToString();

                EquipoList.Add(equipo);
            }

            return EquipoList;
        }

    }
}
