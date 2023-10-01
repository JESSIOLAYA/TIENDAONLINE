using Microsoft.EntityFrameworkCore;
using API.Data;
using API.Models;

namespace API.Data
{
    public class Contexto : DbContext
    {
        public Contexto(DbContextOptions<Contexto> options)
           : base(options)
        {
            Database.EnsureCreated();
        Contactos = Set<Contactos>();
        }

        public DbSet<Contactos> Contactos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Define la clave principal de la entidad Contactos
            modelBuilder.Entity<Contactos>()
                .HasKey(p => p.IdContacto);
                

            // Puedes agregar más configuraciones aquí si es necesario

            base.OnModelCreating(modelBuilder);
        }
    }
}