using System;
using System.Collections.Generic;

namespace Biblioteca.Models;

public partial class Libro
{
    public int LibroId { get; set; }

    public string Titulo { get; set; } = null!;

    public string Autor { get; set; } = null!;

    public string? Genero { get; set; }

    public int? AnioPublicacion { get; set; }

    public bool? Disponible { get; set; }

    public virtual ICollection<Prestamo> Prestamos { get; set; } = new List<Prestamo>();

    public virtual ICollection<Reserva> Reservas { get; set; } = new List<Reserva>();
}
