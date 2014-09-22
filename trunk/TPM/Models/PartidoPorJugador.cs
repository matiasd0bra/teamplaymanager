using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPM.Models.ViewModel;

namespace TPM.Models
{
    public class PartidoPorJugador
    {
        public int PartidoId { get; set; }
        public int JugadorId { get; set; }
        public int NroCamiseta { get; set; }
        public int MinutoPrimerAmarilla { get; set; }
        public int MinutoSegundaAmarilla { get; set; }
        public int MinutoRoja { get; set; }
        public int MinutoSalio { get; set; }
        public int MinutoEntro { get; set; }
        public bool Destacado { get; set; }
        public bool Titular { get; set; }
        public string Comentarios { get; set; }

        //Goles por Partido
        public List<GolesJugadorPorPartido> GolesList { get; set; }  // MinutoGol, Descripcion, UrlVideo

    }
}