using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Gol
    {
        public Jugador Jugador { get; set; }
        public int MinutosGol { get; set; }
        public string MinutosGolString { get; set; }
        public string Descripcion { get; set; }
        public string UrlVideo { get; set; }
    }
}