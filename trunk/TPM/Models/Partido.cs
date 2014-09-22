using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Partido
    {
        public int PartidoId { get; set; }
        public int TemporadaId { get; set; }
        public string TemporadaNombre { get; set; }

        public int TipoPartidoId { get; set; }
        public string TipoPartidoNombre { get; set; }
        public DateTime FechaHoraInicio { get; set; }
        public int EstadoId { get; set; }
        public string EstadoNombre { get; set; }

        public int EquipoId { get; set; }
        public string EquipoNombre { get; set; }
        public string RivalNombre { get; set; }

        
        public bool Local { get; set; }
        public string LocalString { get; set; }

        public int LocalidadId { get; set; }         //Lugar del partido, si es local, va 0.
        public string LocalidadNombre { get; set; }

        public int Duracion { get; set; }
        public int GolesPropios { get; set; }
        public int GolesRival { get; set; }

        public List<Temporada> TemporadasList { get; set; }
        public List<Equipo> EquiposList { get; set; }
    }
}