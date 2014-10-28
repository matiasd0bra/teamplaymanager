using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class HistorialEquiposJugador
    {
        public Equipo Equipo { get; set; }
        public DateTime FechaDesdeHistorial { get; set; }
        public DateTime FechaHastaHistorial { get; set; }
        public string FechaDesdeHistorialString { get; set; }
        public string FechaHastaHistorialString { get; set; }
    }
}