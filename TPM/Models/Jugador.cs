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
        public string NumeroDoc { get; set; }
        [Required]
        public string FechaNacFormateada { get; set; }
        [Required]
        public string Domicilio { get; set; }
        [Required]
        public string Apodo { get; set; }     
        [Required]
        public string PesoString { get; set; }
        [Required]
        public string EstaturaString { get; set; }
        [Required]
        public string Telefono { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string Representante { get; set; }     
        [Required]
        public string PiernaHabil { get; set; }


        public string Posicion { get; set; }
        public int Peso { get; set; }
        public int Estatura { get; set; }

        public string Colegio { get; set; }

        public int TipoDocId { get; set; }
        public string TipoDocNombre { get; set; }
        public List<TipoDoc> TipoDocLista { get; set; }
        
        public DateTime FechaNac { get; set; }

        public int LocalidadId { get; set; }
        public string LocalidadNombre { get; set; }
        public List<Localidad> LocalidadLista { get; set; }

        public string Titular { get; set; }

        public List<Equipo> Equipos { get; set; }
        public int EquipoId { get; set; }
        public string EquiposNombre { get; set; }
        public int PartidoId { get; set; }

        public int Categoria { get; set; }
        
        public string CiudadaniaEuropea { get; set; }

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

        public int NumeroSuplentes { get; set; }

        //Datos jugador por partido
        public int NumeroCamiseta { get; set; }
        public int MinutosJugados { get; set; }
        public string MinutosJugadosString { get; set; }
        public int Calificacion { get; set; }
        public string CalificacionString { get; set; }
        public int Cambio { get; set; }
        public string CambioString { get; set; }
        public int Gol { get; set; }
        public string GolString { get; set; }
        public int MinPrimeraAmarilla { get; set; }
        public string MinPrimeraAmarillaString { get; set; }
        public int MinSegundaAmarilla { get; set; }
        public string MinSegundaAmarillaString { get; set; }
        public int MinRoja { get; set; }
        public string MinRojaString { get; set; }
        public string Observaciones { get; set; }
        public string Destacado { get; set; }
    }
}