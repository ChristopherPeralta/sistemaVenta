USE [DistribuidoraCamila]
GO
/****** Object:  Table [dbo].[CARGO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGO](
	[codigo_cargo] [char](5) NOT NULL,
	[cargo] [varchar](13) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASIFICACION_PRODUCTO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASIFICACION_PRODUCTO](
	[codigo_clasificacion] [char](5) NOT NULL,
	[nombre_clasificacion] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[codigo_cliente] [char](5) NOT NULL,
	[codigo_distrito] [char](5) NOT NULL,
	[tipo_documento] [varchar](3) NOT NULL,
	[numero_documento] [varchar](11) NOT NULL,
	[nombre_cliente] [varchar](50) NOT NULL,
	[telefono_cliente] [char](9) NOT NULL,
	[direccion_cliente] [varchar](40) NOT NULL,
	[email_cliente] [varchar](40) NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRAS]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRAS](
	[codigo_compras] [char](5) NOT NULL,
	[codigo_proveedor] [char](5) NOT NULL,
	[codigo_producto] [char](5) NOT NULL,
	[cantidad_compra] [smallint] NOT NULL,
	[precio_compra] [smallmoney] NOT NULL,
	[precio_venta] [smallmoney] NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_compras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPROBANTE]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTE](
	[codigo_comprobante] [char](5) NOT NULL,
	[codigo_venta] [char](5) NOT NULL,
	[fecha_emision] [date] NOT NULL,
	[tipo_documento] [varchar](7) NOT NULL,
	[tipo_venta] [varchar](7) NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[codigo_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_COMPRAS]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_COMPRAS](
	[codigo_detallecompra] [char](5) NOT NULL,
	[codigo_compras] [char](5) NOT NULL,
	[codigo_producto] [char](5) NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[precio] [smallmoney] NOT NULL,
	[descuento] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_detallecompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[codigo_detalleventa] [char](5) NOT NULL,
	[codigo_venta] [char](5) NOT NULL,
	[codigo_producto] [char](5) NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[precio] [smallmoney] NOT NULL,
	[descuento] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_detalleventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DISTRITO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRITO](
	[codigo_distrito] [char](5) NOT NULL,
	[nombre_distrito] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_distrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[codigo_empleado] [char](5) NOT NULL,
	[codigo_cargo] [char](5) NOT NULL,
	[codigo_distrito] [char](5) NOT NULL,
	[nombre_empleado] [varchar](50) NOT NULL,
	[dni_empleado] [char](11) NOT NULL,
	[direccion_empleado] [varchar](40) NOT NULL,
	[telefono_empleado] [char](9) NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[email_empleado] [varchar](40) NOT NULL,
	[contraseña_empleado] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MARCA]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARCA](
	[codigo_marca] [char](5) NOT NULL,
	[marca_producto] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PESO_PRODUCTO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PESO_PRODUCTO](
	[codigo_peso] [char](5) NOT NULL,
	[unidad_metrica] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_peso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[codigo_producto] [char](5) NOT NULL,
	[codigo_clasificacion] [char](5) NOT NULL,
	[codigo_peso] [char](5) NOT NULL,
	[codigo_unidad] [char](5) NOT NULL,
	[codigo_marca] [char](5) NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[precio_compra] [smallmoney] NOT NULL,
	[precio_venta] [smallmoney] NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[codigo_proveedor] [char](5) NOT NULL,
	[codigo_distrito] [char](5) NOT NULL,
	[nombre_proveedor] [varchar](50) NOT NULL,
	[ruc_proveedor] [char](11) NOT NULL,
	[direccion_proveedor] [varchar](40) NOT NULL,
	[telefono_proveedor] [char](9) NOT NULL,
	[email_proveedor] [varchar](40) NOT NULL,
	[estado] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UNIDAD_LOGISTICA_PRODUCTO]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNIDAD_LOGISTICA_PRODUCTO](
	[codigo_unidad] [char](5) NOT NULL,
	[nombre_unidad] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_unidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[codigo_venta] [char](5) NOT NULL,
	[codigo_cliente] [char](5) NOT NULL,
	[codigo_empleado] [char](5) NOT NULL,
	[tipo_transaccion] [varchar](12) NOT NULL,
	[tipo_venta] [varchar](7) NOT NULL,
	[estado] [varchar](15) NOT NULL,
	[igv] [smallmoney] NOT NULL,
	[fecha] [date] NOT NULL,
	[importe] [smallmoney] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD FOREIGN KEY([codigo_distrito])
REFERENCES [dbo].[DISTRITO] ([codigo_distrito])
GO
ALTER TABLE [dbo].[COMPRAS]  WITH CHECK ADD  CONSTRAINT [LF_COMPRAS_PRODUCTO] FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[PRODUCTO] ([codigo_producto])
GO
ALTER TABLE [dbo].[COMPRAS] CHECK CONSTRAINT [LF_COMPRAS_PRODUCTO]
GO
ALTER TABLE [dbo].[COMPRAS]  WITH CHECK ADD  CONSTRAINT [LF_COMPRAS_PROVEEDOR] FOREIGN KEY([codigo_proveedor])
REFERENCES [dbo].[PROVEEDOR] ([codigo_proveedor])
GO
ALTER TABLE [dbo].[COMPRAS] CHECK CONSTRAINT [LF_COMPRAS_PROVEEDOR]
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([codigo_venta])
REFERENCES [dbo].[VENTA] ([codigo_venta])
GO
ALTER TABLE [dbo].[DETALLE_COMPRAS]  WITH CHECK ADD  CONSTRAINT [LF_DETALLECOMPRAS_COMPRAS] FOREIGN KEY([codigo_compras])
REFERENCES [dbo].[COMPRAS] ([codigo_compras])
GO
ALTER TABLE [dbo].[DETALLE_COMPRAS] CHECK CONSTRAINT [LF_DETALLECOMPRAS_COMPRAS]
GO
ALTER TABLE [dbo].[DETALLE_COMPRAS]  WITH CHECK ADD  CONSTRAINT [LF_DETALLECOMPRAS_PRODUCTO] FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[PRODUCTO] ([codigo_producto])
GO
ALTER TABLE [dbo].[DETALLE_COMPRAS] CHECK CONSTRAINT [LF_DETALLECOMPRAS_PRODUCTO]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [LF_DETALLEVENTA_PRODUCTO] FOREIGN KEY([codigo_producto])
REFERENCES [dbo].[PRODUCTO] ([codigo_producto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [LF_DETALLEVENTA_PRODUCTO]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [LF_DETALLEVENTA_VENTA] FOREIGN KEY([codigo_venta])
REFERENCES [dbo].[VENTA] ([codigo_venta])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [LF_DETALLEVENTA_VENTA]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD FOREIGN KEY([codigo_cargo])
REFERENCES [dbo].[CARGO] ([codigo_cargo])
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD FOREIGN KEY([codigo_distrito])
REFERENCES [dbo].[DISTRITO] ([codigo_distrito])
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD FOREIGN KEY([codigo_marca])
REFERENCES [dbo].[MARCA] ([codigo_marca])
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [LF_PRODUCTO_CLASIFICACION] FOREIGN KEY([codigo_clasificacion])
REFERENCES [dbo].[CLASIFICACION_PRODUCTO] ([codigo_clasificacion])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [LF_PRODUCTO_CLASIFICACION]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [LF_PRODUCTO_PESO] FOREIGN KEY([codigo_peso])
REFERENCES [dbo].[PESO_PRODUCTO] ([codigo_peso])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [LF_PRODUCTO_PESO]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [LF_PRODUCTO_UNIDAD_LOGISTICA] FOREIGN KEY([codigo_unidad])
REFERENCES [dbo].[UNIDAD_LOGISTICA_PRODUCTO] ([codigo_unidad])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [LF_PRODUCTO_UNIDAD_LOGISTICA]
GO
ALTER TABLE [dbo].[PROVEEDOR]  WITH CHECK ADD FOREIGN KEY([codigo_distrito])
REFERENCES [dbo].[DISTRITO] ([codigo_distrito])
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [LF_VENTA_CLIENTE] FOREIGN KEY([codigo_cliente])
REFERENCES [dbo].[CLIENTE] ([codigo_cliente])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [LF_VENTA_CLIENTE]
GO
ALTER TABLE [dbo].[VENTA]  WITH CHECK ADD  CONSTRAINT [LF_VENTA_EMPLEADO] FOREIGN KEY([codigo_empleado])
REFERENCES [dbo].[EMPLEADO] ([codigo_empleado])
GO
ALTER TABLE [dbo].[VENTA] CHECK CONSTRAINT [LF_VENTA_EMPLEADO]
GO
/****** Object:  StoredProcedure [dbo].[agregar_detalle]    Script Date: 12/05/2023 10:43:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregar_detalle]
@cod_venta char(5),
@cod_producto char(5),
@cantidad int,
@precio smallmoney,
@descuento smallmoney
as
declare @codigodetalle char(5);
declare @tota smallmoney;
declare @cod int
select @cod = RIGHT(max(codigo_detalleventa),4)+1 from DETALLE_VENTA
if @cod is null
begin
select @cod = 1
end;
select @tota = ((@precio * @cantidad)-@descuento) 
select @codigodetalle = CONCAT('D',RIGHT(concat('00000',@cod),4));
insert into DETALLE_VENTA VALUES (@codigodetalle,@cod_venta,@cod_producto,@cantidad,@precio,@descuento)
UPDATE DETALLE_VENTA SET precio = @precio * @cantidad;
UPDATE VENTA SET Importe = Importe + (((@tota)*0.18)  + @tota), igv= igv + (@tota * 0.18)   where codigo_venta = @cod_venta;
UPDATE PRODUCTO SET cantidad = cantidad - @cantidad where codigo_producto = @cod_producto;

GO
/****** Object:  StoredProcedure [dbo].[agregarCliente]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregarCliente]
@codigo_distrito char(5),
@tipo_documento varchar(3),
@numero_documento char(11), 
@nombre_cliente varchar(50), 
@telefono_cliente char(9), 
@direccion_cliente varchar(40), 
@email_cliente varchar(40)

as 
declare @codigocliente char(5); 
declare @estado_cliente varchar(15); 
declare @cod int; 
select @cod = RIGHT(max(codigo_cliente),4)+1 from CLIENTE 
select @estado_cliente = 'ACTIVO' 
if @cod is null 
begin select @cod = 1 
end; 
select @codigocliente = CONCAT('C',RIGHT(concat('00000',@cod),4));
INSERT INTO CLIENTE 
VALUES (@codigocliente, @codigo_distrito, @tipo_documento, @numero_documento, @nombre_cliente, @direccion_cliente, 
@telefono_cliente, @email_cliente, @estado_cliente)
GO
/****** Object:  StoredProcedure [dbo].[agregarCompra]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregarCompra]
	@codigo_proveedor char(5),
	@codigo_producto char(5),
	@cantidad_compra char(5),
	@precio_compra char(5),
	@precio_venta varchar(60)

	as
	declare @codigocompras char(5);
	declare @estadocompra varchar(15);
	declare @cod int;
	
	select @cod = RIGHT(max(codigo_compras),4)+1 from COMPRAS
	select @estadocompra = 'ACTIVO'
	if @cod is null
		begin
		select @cod = 1
		end;
	select @codigocompras = CONCAT('C',RIGHT(concat('00000',@cod),4));
 

	insert into COMPRAS VALUES (@codigocompras,@codigo_proveedor,@codigo_producto,@cantidad_compra,@precio_compra,
	@precio_venta, @estadocompra)
	UPDATE PRODUCTO  SET cantidad = cantidad + @cantidad_compra 
	WHERE @codigo_producto = codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[agregarEmpleado]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregarEmpleado]
@codigo_cargo char(5),
@codigo_distrito char(5), 
@nombre_empleado varchar(50), 
@dni_empleado char(11), 
@direccion_empleado varchar(40), 
@telefono_empleado char(9),
@email_empleado varchar(40),
@contraseña_empleado varchar(40)

as 
declare @codigoempleado char(5); 
declare @estado_empleado varchar(15); 
declare @cod int; 
select @cod = RIGHT(max(codigo_empleado),4)+1 from EMPLEADO 
select @estado_empleado = 'ACTIVO' 
if @cod is null 
begin select @cod = 1 
end; 
select @codigoempleado = CONCAT('E',RIGHT(concat('00000',@cod),4));
INSERT INTO EMPLEADO 
VALUES (@codigoempleado, @codigo_cargo, @codigo_distrito, @nombre_empleado, @dni_empleado, @direccion_empleado, 
@telefono_empleado, @estado_empleado,@email_empleado, @contraseña_empleado)
GO
/****** Object:  StoredProcedure [dbo].[agregarProducto]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregarProducto]
	@codigo_clasificacion char(5),
	@codigo_marca char(5),
	@descripcion varchar(60),
	@codigo_peso char(5),
	@codigo_unidad char(5),
	@cantidad smallint,
	@precio_compra smallmoney,
	@precio_venta smallmoney

	as
	declare @codigoproducto char(5);
	declare @estadoproducto varchar(15);
	declare @cod int;
	select @cod = RIGHT(max(codigo_producto),4)+1 from PRODUCTO
	select @estadoproducto = 'ACTIVO'
	if @cod is null
		begin
		select @cod = 1
		end;
	select @codigoproducto = CONCAT('P',RIGHT(concat('00000',@cod),4));
	insert into PRODUCTO VALUES (@codigoproducto,@codigo_clasificacion,@codigo_peso,@codigo_unidad,@codigo_marca,
	@descripcion,@cantidad,@precio_compra,@precio_venta,@estadoproducto)
GO
/****** Object:  StoredProcedure [dbo].[agregarProveedor]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[agregarProveedor]
@codigo_distrito char(5), 
@nombre_proveedor varchar(50), 
@ruc_proveedor char(11), 
@direccion_proveedor varchar(40), 
@telefono_proveedor char(9), 
@email_proveedor varchar(40)

as 
declare @codigoproveedor char(5); 
declare @estado_proveedor varchar(15); 
declare @cod int; 
select @cod = RIGHT(max(codigo_proveedor),4)+1 from PROVEEDOR 
select @estado_proveedor = 'ACTIVO' 
if @cod is null 
begin select @cod = 1 
end; 
select @codigoproveedor = CONCAT('P',RIGHT(concat('00000',@cod),4));
INSERT INTO PROVEEDOR 
VALUES (@codigoproveedor, @codigo_distrito, @nombre_proveedor, @ruc_proveedor, @direccion_proveedor, 
@telefono_proveedor ,@email_proveedor, @estado_proveedor)
GO
/****** Object:  StoredProcedure [dbo].[agregarVenta]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   procEDURE [dbo].[agregarVenta]
@cod_Venta char(5),
@cod_cliente char(5),
@cod_empleado char(5),
@tipo_transaccion varchar(12),
@tipo_venta varchar(12),
@igv smallmoney,
@fecha date ,
@importe smallmoney
as
declare @estadoventa varchar(15);
declare @cod int;
select @estadoventa = 'ACTIVO'
insert into VENTA VALUES (@cod_Venta,@cod_cliente,@cod_empleado,@tipo_transaccion,@tipo_venta,@estadoventa,@igv,@fecha,@importe)

GO
/****** Object:  StoredProcedure [dbo].[comboboxcliente]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[comboboxcliente]
as
select  nombre_cliente as Nombre, codigo_cliente as ID from cliente

GO
/****** Object:  StoredProcedure [dbo].[contraseñaEmpleado]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[contraseñaEmpleado]
@codigo_empleado char(5)

as
SELECT contraseña_empleado FROM EMPLEADO 
WHERE codigo_empleado = @codigo_empleado
GO
/****** Object:  StoredProcedure [dbo].[editarCliente]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarCliente]
@codigo_cliente char(5),
@codigo_distrito char(5),
@tipo_documento varchar(3),
@numero_documento char(11), 
@nombre_cliente varchar(50), 
@telefono_cliente char(9), 
@direccion_cliente varchar(40), 
@email_cliente varchar(40)

AS
UPDATE CLIENTE 
SET codigo_distrito = @codigo_distrito, tipo_documento = @tipo_documento, numero_documento = @numero_documento,
					 nombre_cliente = @nombre_cliente, telefono_cliente = @telefono_cliente,
					 direccion_cliente = @direccion_cliente, email_cliente = @email_cliente 
WHERE codigo_cliente = @codigo_cliente
GO
/****** Object:  StoredProcedure [dbo].[editarCompra]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarCompra]
	@codigo_compras char(5),
	@codigo_proveedor char(5),
	@codigo_producto char(5),
	@cantidad_compra char(5),
	@precio_compra char(5),
	@precio_venta varchar(60)
AS
UPDATE COMPRAS 
SET codigo_proveedor = @codigo_proveedor, codigo_producto = @codigo_producto, cantidad_compra = @cantidad_compra,
					 precio_compra = @precio_compra, precio_venta = @precio_venta
WHERE codigo_compras = @codigo_compras
GO
/****** Object:  StoredProcedure [dbo].[editarEmpleado]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarEmpleado]
@codigo_empleado char(5),
@codigo_cargo char(5),
@codigo_distrito char(5), 
@nombre_empleado varchar(50), 
@dni_empleado char(11), 
@direccion_empleado varchar(40), 
@telefono_empleado char(9),
@email_empleado varchar(40),
@contraseña_empleado varchar(40)
AS
UPDATE EMPLEADO 
SET codigo_cargo = @codigo_cargo, codigo_distrito = @codigo_distrito, nombre_empleado = @nombre_empleado, dni_empleado = @dni_empleado,
					 direccion_empleado = @direccion_empleado, telefono_empleado = @telefono_empleado, 
					 email_empleado = @email_empleado
WHERE codigo_empleado = @codigo_empleado
GO
/****** Object:  StoredProcedure [dbo].[editarProducto]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarProducto]
	@codigo_producto char(5),
	@codigo_clasificacion char(5),
	@codigo_peso char(5),
	@codigo_unidad char(5),
	@codigo_marca char(5),
	@descripcion varchar(60),
	@cantidad smallint,
	@precio_compra smallmoney,
	@precio_venta smallmoney
AS
UPDATE PRODUCTO 
SET codigo_clasificacion = @codigo_clasificacion, codigo_peso = @codigo_peso, codigo_unidad = @codigo_unidad,
					 codigo_marca = @codigo_marca, descripcion = @descripcion, cantidad = @cantidad, 
					 precio_compra = @precio_compra, precio_venta = @precio_venta
WHERE codigo_producto = @codigo_producto
GO
/****** Object:  StoredProcedure [dbo].[editarProveedor]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarProveedor]
@codigo_proveedor char(5),
@codigo_distrito char(5), 
@nombre_proveedor varchar(50), 
@ruc_proveedor char(11), 
@direccion_proveedor varchar(40), 
@telefono_proveedor char(9), 
@email_proveedor varchar(40)


AS
UPDATE PROVEEDOR 
SET codigo_distrito = @codigo_distrito, nombre_proveedor = @nombre_proveedor, ruc_proveedor = @ruc_proveedor,
					 direccion_proveedor = @direccion_proveedor, telefono_proveedor = @telefono_proveedor, 
					 email_proveedor = @email_proveedor
WHERE codigo_proveedor = @codigo_proveedor
GO
/****** Object:  StoredProcedure [dbo].[editarVenta]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarVenta]
@cod_Venta char(5),
@cod_cliente char(5),
@cod_empleado char(5),
@tipo_transaccion varchar(12),
@tipo_venta varchar(12),
@igv int,
@fecha date ,
@importe smallint
as
--select @codigoempleado = 'E0001'
update VENTA set codigo_venta = @cod_Venta,
codigo_cliente = @cod_cliente , codigo_empleado = @cod_empleado,tipo_transaccion = @tipo_transaccion,
tipo_venta = @tipo_venta, igv = @igv , fecha = @fecha, Importe = @importe
where @cod_Venta = codigo_venta;

GO
/****** Object:  StoredProcedure [dbo].[eliminar_detalle]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_detalle]
@cod_detalle char(5),
@cod_Venta char(5),
@cod_producto char(5),
@cantidad int,
@precio smallmoney,
@descuento smallmoney
as
declare @tota smallmoney;
select @tota = ((@precio * @cantidad)-@descuento) 
UPDATE PRODUCTO  set  cantidad = cantidad  + @cantidad  where codigo_producto = @cod_producto
UPDATE VENTA set Importe = Importe - (((@tota)*0.18)  + @tota), igv = igv - (@tota * 0.18) from DETALLE_VENTA
WHERE VENTA.codigo_venta = @cod_Venta
delete from DETALLE_VENTA where codigo_detalleventa = @cod_detalle

GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*   ELIMINAR VENTA*/
create proc [dbo].[eliminar_venta]
@cod_venta char(5)
as
UPDATE VENTA SET Estado = 'INACTIVO'
where codigo_venta =  @cod_venta
UPDATE PRODUCTO set PRODUCTO.cantidad  = PRODUCTO.cantidad +  [DETALLE_VENTA].cantidad from PRODUCTO
inner join DETALLE_VENTA on  PRODUCTO.codigo_producto = DETALLE_VENTA.codigo_producto 

GO
/****** Object:  StoredProcedure [dbo].[eliminarCliente]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarCliente]

@codigo_cliente char(5)

AS
UPDATE CLIENTE 
SET estado = 'INACTIVO'
WHERE codigo_cliente = @codigo_cliente
GO
/****** Object:  StoredProcedure [dbo].[eliminarEmpleado]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarEmpleado]
@codigo_empleado char(5)

AS
UPDATE EMPLEADO 
SET estado = 'INACTIVO'
WHERE codigo_empleado = @codigo_empleado

GO
/****** Object:  StoredProcedure [dbo].[eliminarProducto]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarProducto]
@codigo_producto char(5)

AS
UPDATE PRODUCTO 
SET estado = 'INACTIVO'
WHERE codigo_producto = @codigo_producto

GO
/****** Object:  StoredProcedure [dbo].[eliminarProveedor]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarProveedor]
@codigo_proveedor char(5)
AS
UPDATE PROVEEDOR 
SET estado = 'INACTIVO'
WHERE codigo_proveedor = @codigo_proveedor
GO
/****** Object:  StoredProcedure [dbo].[mostrar_detalle]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_detalle] 
@cod_Venta char(5)
as
select d.codigo_detalleventa as ID_Detalle,v.codigo_venta as ID_Venta,p.codigo_producto as ID_Producto ,p.descripcion as Producto,
d.cantidad as Cantidad , (d.precio / d.cantidad) as Precio_Unitario, d.precio as Sub_Total, d.descuento as Desceutno , (d.precio - d.descuento) as Total
from  DETALLE_VENTA d
inner join VENTA v on v.codigo_venta = d.codigo_venta
INNER join PRODUCTO p on p.codigo_producto = d.codigo_producto
where d.codigo_venta = @cod_Venta

GO
/****** Object:  StoredProcedure [dbo].[mostrar_Venta]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_Venta]
as
select v.codigo_venta  as ID_Venta, c.codigo_cliente as ID_Cliente,c.nombre_cliente as 'Nombre Cliente',
e.codigo_empleado as ID_Empleado, e.nombre_empleado as 'Nobre Empleado',v.tipo_transaccion as Transaccion,
v.tipo_venta as Tipo_Venta,v.fecha as Fecha,(v.Importe -v.igv) as Sub_Total,v.igv as IGV, v.Importe as Importe  from  VENTA v
inner join CLIENTE c on c.codigo_cliente = v.codigo_cliente
INNER join EMPLEADO e on e.codigo_empleado = v.codigo_empleado
where 
v.Estado = 'ACTIVO'

GO
/****** Object:  StoredProcedure [dbo].[nuevodistrito]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[nuevodistrito] 
@nombre_distrito varchar(50) 
as declare @codigo_distrito char(5);
declare @cod int;
select @cod = RIGHT(max(codigo_distrito),4)+1 from DISTRITO if @cod is null begin select @cod =1 end;
select @codigo_distrito = CONCAT('D',RIGHT(concat('00000',@cod),4));
insert into DISTRITO VALUES (@codigo_distrito,@nombre_distrito)
GO
/****** Object:  StoredProcedure [dbo].[totalventacuadro]    Script Date: 12/05/2023 10:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[totalventacuadro]
@cod_venta char(5)
as
select (Importe - igv) as 'sub total', igv,Importe  from VENTA
where codigo_venta = @cod_venta

GO
