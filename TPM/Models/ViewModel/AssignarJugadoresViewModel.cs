using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPM.Repositorio;

namespace TPM.Models.ViewModel
{
    public class AssignarJugadoresViewModel
    {
        
        public Equipo EquipoSeleccionado { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string NombreFiltro { get; set; }
        public string ApellidoFiltro { get; set; }
        public string CategoriaFiltro { get; set; }
        public int CategoriaId { get; set; }
        public List<Categoria> CategoriaList { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }
        public string HoraCitacion { get; set; }
        public string EquiposFiltro { get; set; }
        public string PosicionFiltro { get; set; }
        public string CategoriasString { get; set; }
        public string CategoriasBuscar { get; set; }

        public List<Jugador> ListaJugadoresTitulares { get; set; }
        public List<Jugador> ListaJugadoresSuplentes { get; set; }
        public List<Jugador> ListaJugadoresAsignados { get; set; }
        public List<Jugador> ListaJugadores { get; set; }

        
        public Partido PartidoSeleccionado { get; set; }


    }
}