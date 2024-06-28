using System;
using System.Collections.Generic;

namespace Biblioteca.Models;

public partial class Notificacione
{
    public int NotificacionId { get; set; }

    public int UsuarioId { get; set; }

    public string Mensaje { get; set; } = null!;

    public DateTime? FechaEnvio { get; set; }

    public bool? Leida { get; set; }

    public virtual Usuario Usuario { get; set; } = null!;
}
