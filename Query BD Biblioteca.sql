CREATE DATABASE Biblioteca
USE Biblioteca

-- Tabla de Libros
CREATE TABLE Libros (
    LibroID INT PRIMARY KEY IDENTITY(1,1),
    Titulo NVARCHAR(255) NOT NULL,
    Autor NVARCHAR(255) NOT NULL,
    Genero NVARCHAR(100),
    AnioPublicacion INT,
    Disponible BIT DEFAULT 1 -- 1: Disponible, 0: No Disponible
);

-- Tabla de Usuarios
CREATE TABLE Usuarios (
    UsuarioID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Contrase�a NVARCHAR(255) NOT NULL,
    FechaRegistro DATETIME DEFAULT GETDATE()
);

-- Tabla de Pr�stamos
CREATE TABLE Prestamos (
    PrestamoID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    LibroID INT NOT NULL,
    FechaPrestamo DATETIME DEFAULT GETDATE(),
    FechaDevolucion DATETIME,
    Devuelto BIT DEFAULT 0, -- 0: No Devuelto, 1: Devuelto
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
);

-- Tabla de Reservas
CREATE TABLE Reservas (
    ReservaID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    LibroID INT NOT NULL,
    FechaReserva DATETIME DEFAULT GETDATE(),
    Activa BIT DEFAULT 1, -- 1: Activa, 0: Inactiva
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
);

-- Tabla de Notificaciones
CREATE TABLE Notificaciones (
    NotificacionID INT PRIMARY KEY IDENTITY(1,1),
    UsuarioID INT NOT NULL,
    Mensaje NVARCHAR(1000) NOT NULL,
    FechaEnvio DATETIME DEFAULT GETDATE(),
    Leida BIT DEFAULT 0, -- 0: No Le�da, 1: Le�da
    FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);
