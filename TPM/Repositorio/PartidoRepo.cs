using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPM.DAL;
using TPM.Models;

namespace TPM.Repositorio
{
    public class PartidoRepo
    {
        public static int PartidoInsert(Partido partido)
        {
            PartidoDAL partidoDal = new PartidoDAL();
            return partidoDal.PartidoInsert(partido.TemporadaId, partido.TipoPartidoId, partido.EquipoId, partido.Rival, partido.FechaHoraInicio, partido.LocalidadId, partido.Local);
        }
    }
}