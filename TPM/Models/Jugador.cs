using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using TPM.Models.ViewModel;

namespace TPM.Models
{
    public class Jugador
    {
        public int Id { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        public string Apellido { get; set; }
        [Required]
        public int TipoDocId { get; set; }
        
        public string TipoDocNombre { get; set; }
        public List<TipoDoc> TipoDocLista { get; set; }
        [Required]
        [Range(0, 99999999)]
        public string NumeroDoc { get; set; }
        public DateTime FechaNac { get; set; }
        [Required]
        public string FechaNacFormateada { get; set; }
        [Required]
        public string Domicilio { get; set; }
        [Required]
        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public List<Localidad> LocalidadLista { get; set; }

        public string Titular { get; set; }

        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string EquiposNombre { get; set; }
        public int PartidoId { get; set; }

        public int Categoria { get; set; }
        public string Apodo { get; set; }
        public float Peso { get; set; }
        public float Estatura { get; set; }
        public string Colegio { get; set; }
        public string Telefono { get; set; }
        public string Email { get; set; }
        public string CiudadaniaEuropea { get; set; }
        public string Representante { get; set; }


        public string ImagenPath { get; set; }
        public Image Imagen { get; set; }

        public DateTime FechaDesdeEquipo { get; set; }
        public string FechaDesdeEquipoFormateada { get; set; }
        public DateTime FechaHastaEquipo { get; set; }
        public string FechaHastaEquipoFormateada { get; set; }

        public List<HistorialEquiposJugador> EquiposList { get; set; }
        public List<HistorialEquiposJugador> EquiposListHistorico { get; set; }

        public CoberturaMedicaJugador CoberturaMedica { get; set; }
        public DatosGeneralesJugador DatosGenerales { get; set; }

        public string NombreApellido { get; set; }
        public string NumeroCamiseta { get; set; }
        public string Posicion { get; set; }
        public string PiernaHabil { get; set; }

        public int NumeroSuplentes { get; set; }

    }
}