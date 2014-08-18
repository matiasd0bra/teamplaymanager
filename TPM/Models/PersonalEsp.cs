using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class PersonalEsp
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public int TipoDocId { get; set; }
        public string TipoDocNombre { get; set; }
        public List<TipoDoc> TipoDocLista { get; set; }
        public string NumeroDoc { get; set; }
        public string Domicilio { get; set; }
        public List<Localidad> LocalidadLista { get; set; }
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string EquiposNombre { get; set; }
    }
}