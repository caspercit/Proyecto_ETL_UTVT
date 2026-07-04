CREATE DATABASE DWUTVTVentas;
GO

USE DWUTVTVentas;
GO

CREATE TABLE DimCliente (
    IdClienteSK INT IDENTITY(1,1) PRIMARY KEY,
    IdClienteOrigen INT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Correo VARCHAR(150) NULL,
    Telefono VARCHAR(20) NULL,
    Ciudad VARCHAR(100) NULL,
    Estado VARCHAR(100) NULL,
    Pais VARCHAR(100) NULL,
    FechaRegistro DATE NULL,
    FechaCarga DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE DimProducto (
    IdProductoSK INT IDENTITY(1,1) PRIMARY KEY,
    IdProductoOrigen INT NOT NULL,
    NombreProducto VARCHAR(150) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    Precio DECIMAL(12,2) NOT NULL,
    Costo DECIMAL(12,2) NOT NULL,
    FechaCarga DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE FactVentas (
    IdVentaSK INT IDENTITY(1,1) PRIMARY KEY,
    IdVentaOrigen INT NOT NULL,
    IdClienteSK INT NOT NULL,
    IdProductoSK INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(12,2) NOT NULL,
    Subtotal DECIMAL(12,2) NOT NULL,
    IVA DECIMAL(12,2) NOT NULL,
    Total DECIMAL(12,2) NOT NULL,
    FechaVenta DATE NOT NULL,
    Sucursal VARCHAR(100) NULL,
    FechaCarga DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_FactVentas_Cliente FOREIGN KEY (IdClienteSK) REFERENCES DimCliente(IdClienteSK),
    CONSTRAINT FK_FactVentas_Producto FOREIGN KEY (IdProductoSK) REFERENCES DimProducto(IdProductoSK)
);

CREATE TABLE LogErrores (
    IdError INT IDENTITY(1,1) PRIMARY KEY,
    NombrePaquete VARCHAR(100) NOT NULL,
    NombreFlujo VARCHAR(100) NOT NULL,
    ArchivoOrigen VARCHAR(150) NOT NULL,
    FilaOrigen VARCHAR(MAX) NULL,
    DescripcionError VARCHAR(500) NOT NULL,
    FechaError DATETIME NOT NULL DEFAULT GETDATE()
);

CREATE TABLE LogProceso (
    IdProceso INT IDENTITY(1,1) PRIMARY KEY,
    NombrePaquete VARCHAR(100) NOT NULL,
    FechaInicio DATETIME NOT NULL,
    FechaFin DATETIME NULL,
    DuracionSegundos INT NULL,
    TotalLeidos INT NULL,
    TotalInsertados INT NULL,
    TotalErrores INT NULL,
    Estatus VARCHAR(50) NOT NULL,
    Mensaje VARCHAR(500) NULL
);
