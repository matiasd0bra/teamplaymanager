﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPM.Models.ViewModel
{
    public class JugadoresAsignados
    {
        public int IdJugador { get; set; }
        public int IdEquipo { get; set; }
        public int IdPartido { get; set; }
        public string Titular { get; set; }
        public int NumeroCamiseta { get; set; }
    }

}