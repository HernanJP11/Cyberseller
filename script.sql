create database cyberseller;

-->crear tabla categoria
create table categoria(
idcategoria serial primary key,
nombre varchar(30)
);

-->crear tabla proveedor
create table proveedor(
idproveedor serial primary key,
nombre varchar (30)
);

-->crear tabla cliente
create table cliente(
dnicliente varchar(20) primary key,
nombre varchar(30) not null,
email varchar(30),
telefono varchar(20)
);

-->crear tabla pedido
create table pedido(
idpedido serial primary key,
fecha date,
dnicliente varchar(20),
foreign key (dnicliente) references cliente(dnicliente)
);

-->crear tabla producto
create table producto(
idproducto serial primary key,
nombre varchar (50)not null,
descripcion varchar(300),
precio float not null,
stock int,
idcategoria int,
idproveedor int,
foreign key (idcategoria) references categoria (idcategoria),
foreign key (idproveedor) references proveedor (idproveedor)
);

-->crear tabla Detallespedido
create table detallespedido(
ide serial primary key,
idpedido int,
idproducto int,
cantidad int,
foreign key (idpedido) references pedido (idpedido),
foreign key (idproducto) references producto (idproducto)
);

