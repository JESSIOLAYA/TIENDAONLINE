using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Pomelo.EntityFrameworkCore.MySql.Infrastructure;
using API.Data;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;



namespace API
{
    public class Startup
    {
        public IConfiguration Configuration { get; }

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        // Configuración de servicios y middleware
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<Contexto>(options =>
            options.UseMySql(Configuration.GetConnectionString("DefaultConnection"),
             new MySqlServerVersion(new Version(8, 0, 34)))); // Especifica la versión de MySQL que estás utilizando
             
             services.AddCors(options =>
    {
        options.AddPolicy("AllowLocalhost5500",
            builder => builder.WithOrigins("http://127.0.0.1:5500")
            .AllowAnyMethod()
            .AllowAnyHeader());
    });



        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseRouting();
            app.UseCors("AllowLocalhost5500");

        }

        
    }
}
