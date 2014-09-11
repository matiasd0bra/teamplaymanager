using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models
{
    public class Equipo
    {
        public int Id { get; set; }
        public int CategoriaId { get; set; }
        public string CategoriaNombre { get; set; }
        public int LigaId { get; set; }
        public int DivisionId { get; set; }
        public string Liga { get; set; }
        public string Division { get; set; }
        public List<Categoria> CategoriaLista { get; set; }
        public List<Division> DivisionLista { get; set; }
        public List<Liga> LigaLista { get; set; }
        public String NombreEquipo { get; set; }
    }
}