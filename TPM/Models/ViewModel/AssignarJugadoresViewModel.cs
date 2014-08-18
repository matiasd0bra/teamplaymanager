using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class AssignarJugadoresViewModel
    {
        public List<Jugador> ListaJugadores { get; set; }
        public Equipo EquipoSeleccionado { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string NombreFiltro { get; set; }
        public int CategoriaFiltro { get; set; }
        public int CategoriaId { get; set; }
        public List<Categoria> CategoriaList { get; set; }
        public List<Jugador> JugadoresAsignados { get; set; }
    }
}