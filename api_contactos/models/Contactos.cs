using System;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.Extensions.DependencyInjection;


namespace API.Models
{
    public class Contactos
    {
      
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)] public int IdContacto { get; set; } 
        public string? Nombre { get; set; } 
        public string? Email { get; set; }
        public string? Asunto { get; set; } = string.Empty;
        public string? Mensaje { get; set; } = string.Empty;
       /* public string? Estado { get; set; } = string.Empty;
        public string? Imagen { get; set; } 
        public string? Color { get; set; }
        public string? Especificaciones { get; set; }*/
        
    }
}
