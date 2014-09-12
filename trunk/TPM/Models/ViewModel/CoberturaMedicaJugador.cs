using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class CoberturaMedicaJugador
    {
        public string ObraSocial { get; set; }
        public int NroObraSocial { get; set; }
        public string ServicioEmergencia { get; set; }
        public int NroServicioEmergencia { get; set; }
        public string Telefono { get; set; }
        public string Hospital { get; set; }
        public string Direccion { get; set; }
        public string Medicamente { get; set; }
        public string Alergico { get; set; }
        public string Observaciones { get; set; }
    }
}