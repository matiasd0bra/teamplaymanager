using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Gol
    {
        public int GolesPorJugadorId { get; set; }
        public int PartidoId { get; set; }
        public int JugadorId { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int MinutosGol { get; set; }
        public string MinutosGolString { get; set; }
        public string Descripcion { get; set; }
        public string UrlVideo { get; set; }
    }
}