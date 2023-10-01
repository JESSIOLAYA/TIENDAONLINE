using Microsoft.Extensions.DependencyInjection;
using API.Models;
using API.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddEndpointsApiExplorer();

builder.Services.AddDbContext<Contexto>
    (options => options.UseMySql(
        "server=localhost;initial catalog=bdprueba;uid=root;pwd=baga2903",
        Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.34-mysql")));


builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseSwagger();

app.MapPost("GuardarContactos", async (Contactos contacto, Contexto contexto) =>
{
    contexto.Contactos.Add(contacto);
    await contexto.SaveChangesAsync();
});

/*app.MapGet("ListarContactos", async (Contexto contexto) =>
{
    return await contexto.Contactos.ToListAsync();
});
*/
app.UseSwaggerUI();
app.Run();
