using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Partido
    {
        public int PartidoId { get; set; }
        public int CampeonatoId { get; set; }
        public string CampeonatoNombre { get; set; }
        public DateTime FechaHoraInicio { get; set; }
        public int EquipoId { get; set; }
        public string EquipoNombre { get; set; }
        public string Rival { get; set; }
        public int TipoPartidoId { get; set; }
        public string TipoPartidoNombre { get; set; }
        public bool Local { get; set; }
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public int Duracion { get; set; }
        public int GolesPropios { get; set; }
        public int GolesRival { get; set; }
    }
}