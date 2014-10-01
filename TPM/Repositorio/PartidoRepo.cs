﻿using System;
using System.Collections.Generic;
using System.Data;
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

        public static Partido PartidoByIdRepo(int id)
        {
            PartidoDAL partidoDAL = new PartidoDAL();
            DataTable dt = partidoDAL.PartidoById(id);

            Partido partido = new Partido();

            partido.PartidoId = int.Parse(dt.Rows[0]["PartidoId"].ToString());
            partido.TemporadaId = int.Parse(dt.Rows[0]["TemporadaId"].ToString());
            partido.EquipoId = int.Parse(dt.Rows[0]["EquipoId"].ToString());
            partido.Rival = dt.Rows[0]["Rival"].ToString();
            partido.FechaHoraInicio = Convert.ToDateTime(dt.Rows[0]["FechaHoraInicio"].ToString());
            partido.LocalidadId = int.Parse(dt.Rows[0]["LocalidadId"].ToString());
            partido.Local = dt.Rows[0]["Local"].ToString();


            return partido;
        }

        public static List<Partido> getPartidosSinDatos()
        {
            PartidoDAL PartidoDAL = new PartidoDAL();
            DataTable dt = PartidoDAL.getPartidosSinDatos();

            Partido partido;
            List<Partido> equipoList = new List<Partido>();


            foreach (DataRow item in dt.Rows)
            {
                partido = new Partido();

                partido.PartidoId = int.Parse(item["PartidoId"].ToString());
                partido.FechaHoraInicio = Convert.ToDateTime(item["FechaHoraInicio"].ToString());
                partido.EquipoNombre = item["NombreEquipo"].ToString();

                equipoList.Add(partido);
            }

            return equipoList;
        }
    }
}