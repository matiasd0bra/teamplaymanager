using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class PersonalEsp
    {
        public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        public string Apellido { get; set; }
        public int TipoDocId { get; set; }
        public string TipoDocNombre { get; set; }
        public List<TipoDoc> TipoDocLista { get; set; }
        [Required]
        [Range(0, 99999999)]
        public string NumeroDoc { get; set; }
        [Required]
        public string Domicilio { get; set; }
        public List<Localidad> LocalidadLista { get; set; }
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string EquiposNombre { get; set; }
        public string Mail { get; set; }
        public List<Especialidad> EspecialidadLista { get; set; }
        public int EspecialidadId { get; set; }
        public string EspecialidadNombre { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
    }
}