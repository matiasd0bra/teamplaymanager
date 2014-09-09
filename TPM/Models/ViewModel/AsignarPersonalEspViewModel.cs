using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class AsignarPersonalEspViewModel
    {
        public List<PersonalEsp> ListaPersonalEsp { get; set; }
        public Equipo EquipoSeleccionado { get; set; }
        public int EquipoId { get; set; }
        public string NombreFiltro { get; set; }
        public string ApellidoFiltro { get; set; }
        public string NumeroDniFiltro { get; set; }
        public List<PersonalEsp> ListaPersonalEspsAsignados { get; set; }
    }
}