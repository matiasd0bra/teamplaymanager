using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using TPM.Models.ViewModel;

namespace TPM.Models
{
    public class Partido
    {
        public int PartidoId { get; set; }
        public int TemporadaId { get; set; }
        public string TemporadaNombre { get; set; }
        public string Fecha { get; set; }
        public string Hora { get; set; }

        public int TipoPartidoId { get; set; }
        public string TipoPartidoNombre { get; set; }

        [Required]
        public DateTime FechaHoraInicio { get; set; }
        [Required]
        public string FechaHoraInicioString { get; set; }

        public DateTime HoraCitacion { get; set; }
        [Required]
        public string HoraCitacionString { get; set; }

        public int EstadoId { get; set; }
        public string EstadoNombre { get; set; }

        public int EquipoId { get; set; }
        public string EquipoNombre { get; set; }
        [Required]
        public string Rival { get; set; }

        
        public string Condicion { get; set; }
        [Required]
        public string Lugar { get; set; }

        
        public int NumeroFecha { get; set; }
        [Required]
        public string NumeroFechaString { get; set; }
        [Required]
        public string Cancha { get; set; }

        public int Duracion { get; set; }
        public int GolesPropios { get; set; }
        public int GolesRival { get; set; }

        public List<Temporada> TemporadasList { get; set; }
        public List<Equipo> EquiposList { get; set; }

        public AssignarJugadoresViewModel JugadoresViewModel { get; set; }

        public List<Partido> listPartidosSinDatos { get; set; }
        public List<Categoria> CategoriaList { get; set; }

        public string CategoriasString { get; set; }
        public List<Jugador> JugadoresPartidoList { get; set; }


        public string[]  CalificacionesArray { get; set; }  
    }
}