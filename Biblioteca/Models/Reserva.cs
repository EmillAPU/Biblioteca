using System;
using System.Collections.Generic;

namespace Biblioteca.Models;

public partial class Reserva
{
    public int ReservaId { get; set; }

    public int UsuarioId { get; set; }

    public int LibroId { get; set; }

    public DateTime? FechaReserva { get; set; }

    public bool? Activa { get; set; }

    public virtual Libro Libro { get; set; } = null!;

    public virtual Usuario Usuario { get; set; } = null!;
}
