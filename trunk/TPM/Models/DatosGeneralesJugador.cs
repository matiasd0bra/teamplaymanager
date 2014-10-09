using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class DatosGeneralesJugador
    {
        public string JuegaOtroEquipo { get; set; }
        public string QuieLoTrajo { get; set; }
        public string NombreMadre { get; set; }
        public string TelMadre { get; set; }
        public string OcupacionMadre { get; set; }
        public string TrabajoMadre { get; set; }
        public string DireccionTrabajoMadre { get; set; }
        public string TelefonoTrabajoMadre { get; set; }
        public string NombrePadre { get; set; }
        public string TelPadre { get; set; }
        public string OcupacionPadre { get; set; }
        public string TrabajoPadre { get; set; }
        public string DireccionTrabajoPadre { get; set; }
        public string TelefonoTrabajoPadre { get; set; }
        public string PadresConviven { get; set; }
        public int Hermanos { get; set; }
        public string HermanosString { get; set; }
        public string NombreResponsable { get; set; }
        public string OcupacionResponsable { get; set; }
        public string ParentescoResponsable { get; set; }
        public string Lesiones { get; set; }
        public string PiernaHabil { get; set; }
        public string Posicion { get; set; }
    }
}