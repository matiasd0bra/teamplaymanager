using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPM.Repositorio;

namespace TPM.Models.ViewModel
{
    public class AssignarJugadoresViewModel
    {
        public List<Jugador> ListaJugadores { get; set; }
        public Equipo EquipoSeleccionado { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string NombreFiltro { get; set; }
        public string ApellidoFiltro { get; set; }
        public int CategoriaFiltro { get; set; }
        public int CategoriaId { get; set; }
        public List<Categoria> CategoriaList { get; set; }
        public List<Jugador> JugadoresAsignados { get; set; }

        //public List<Jugador> obtenerPaginaJugadoresFiltrados(int paginaActual, int personasPorPagina, string columnaOrdenacion, 
            //string sentidoOrdenacion, int id, string nombre, string apellido)
        public List<Jugador> obtenerPaginaJugadoresFiltrados(int paginaActual, int personasPorPagina, int id, string nombre, string apellido)
        {
            // Comprobamos los datos de entrada
            //sentidoOrdenacion = sentidoOrdenacion.Equals("desc", StringComparison.CurrentCultureIgnoreCase) ?
            //                    sentidoOrdenacion : "asc";

            //var validColumns = new[] { "apellidos", "fechanacimiento", "email", "numerodehijos" };
            //if (!validColumns.Contains(columnaOrdenacion.ToLower()))
            //    columnaOrdenacion = "apellidos";

            if (paginaActual < 1) paginaActual = 1;
            if (personasPorPagina < 1) personasPorPagina = 10;

            ListaJugadores = JugadoresRepo.JugadoresSearch(id, nombre, apellido);

            return ListaJugadores
                .Skip((paginaActual - 1) * personasPorPagina)
                .Take(personasPorPagina)
                .ToList(); ;
        }
    }
}