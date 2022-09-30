using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using my_books.Data.Models;
using ProductStorage.Data.Models;
using ProductStorage.Models.Repository;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

//
builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
var connectionString = builder.Configuration.GetConnectionString("DefaultConnectionString");
builder.Services.AddDbContext<AppDbContext>(x => x.UseSqlServer(connectionString));
builder.Services.AddScoped<IProduct, ProductRepository>();
builder.Services.AddTransient<ProductRepository>();





var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseAuthorization();

app.MapControllers();

app.Run();
