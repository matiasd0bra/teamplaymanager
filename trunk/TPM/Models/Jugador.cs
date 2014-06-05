using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Jugador
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int TipoDocId { get; set; }
        public string TipoDocNombre { get; set; }
        public int NumeroDoc { get; set; }
        public string Domicilio { get; set; }
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }

    }
}