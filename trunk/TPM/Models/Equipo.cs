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
        public string CategoriaNombre  { get; set; }
        public String Liga { get; set; }
        public String Division { get; set; }
        public List<Categoria> CategoriaLista { get; set; }
        public List<Division> DivisionLista { get; set; }
        public List<Liga> LigaLista { get; set; }         

          
    }
}