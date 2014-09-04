using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class JugadoresAsignados
    {
        public List<IdJugadores> listJug { get; set; }
        public int IdEquipo { get; set; }
    }

    public class IdJugadores
    {
        public int Id { get; set; }
    }
}