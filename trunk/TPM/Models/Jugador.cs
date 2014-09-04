using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TPM.Models
{
    public class Jugador
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int TipoDocId { get; set; }
        public List<Localidad> LocalidadLista { get; set; }
        public string TipoDocNombre { get; set; }
        public List<TipoDoc> TipoDocLista { get; set; }
        public string NumeroDoc { get; set; }
        public DateTime FechaNac { get; set; }
        public string FechaNacFormateada { get; set; }
        public string Domicilio { get; set; }
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string EquiposNombre { get; set; }
        public int Categoria { get; set; }

        public Image Imagen { get; set; }


    }
}