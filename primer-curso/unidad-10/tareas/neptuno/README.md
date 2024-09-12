<div align="justify">

**Nabil L. A. - 1ºDAM**
***

***

## Neptuno

### Práctica 01
- Obtener información del proveedor.
```code
for $prov in doc ("neptuno.xml") //proveedores

return <li> {$prov/*}</li>
```

### Práctica 02
- Obtener información del proveedor a modo de tabla.
```code
<html>
<head><title>Consulta Proveedor </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Ref Proveedor </td>
    <td> Nombre Proveedor </td>
    <td> Pais Proveedor </td>
  </tr>
  
{ for $prov in doc ("neptuno.xml") //proveedores
return 
  <tr> 
    <td> {$prov/ReferenciaProveedor/text()}</td>
    <td> {$prov/NombreProveedor/text()}</td>
    <td> {$prov/PaisProveedor/text()}</td> 
  </tr>
}
</table>
</body>
</html>
```

### Práctica 03
- Obtener información del cliente a modo de tabla.
```code
<html>
<head><title>Consulta Proveedor </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Ref Cliente </td>
    <td> Nombre Cliente </td>
    <td> Pais Cliente </td>
    <td> Codigo Postal Cliente</td>
    <td> Ciudad Cliente</td>
    <td> Teléfono Cliente</td>
  </tr>
  
{ for $cliente in doc ("neptuno.xml") //clientes
return 
  <tr> 
    <td> {$cliente/RefCliente/text()}</td>
    <td> {$cliente/NombrCliente/text()}</td>
    <td> {$cliente/PaisCliente/text()}</td>   
    <td> {$cliente/CodPostalCliente/text()}</td> 
    <td> {$cliente/CiudadCliente/text()}</td> 
    <td> {$cliente/TelefornoCliente/text()}</td> 
  </tr>
}
</table>
</body>
</html>

```
### Práctica 03
- Obtener información del artículo a modo de tabla.
```code
<html>
<head><title>Consulta Articulo </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Ref Articulo </td>
    <td> Nombre Articulo </td>
    <td> Nombre Categoria </td>
    <td> Ref Proveedor </td>
    <td> Precio UD </td>
    <td> Unidades </td>
  </tr>
  
{ for $art in doc ("neptuno.xml") //articulos
return 
  <tr> 
    <td> {$art/RefArticulo/text()}</td>
    <td> {$art/NombreArticulo/text()}</td>
    <td> {$art/NombreCategoria/text()}</td>
    <td> {$art/ReferenciaProveedor/text()}</td> 
    <td> {$art/PrecioUnidad/text()}</td>
    <td> {$art/UnidadesExistencia/text()}</td>
  </tr>
}
</table>
</body>
</html>
```

### Práctica 04
- Obtener el nombre y la referencia del articulo y del proveedor.
```code
<html>
<head><title>Consulta varios </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Ref Articulo </td>
    <td> Nombre Articulo </td>
    <td> Ref Proveedor </td>
    <td> Nombre Proveedor </td>
  </tr>
  
{ for $art in doc ("neptuno.xml") //articulos
    for $prov in doc ("neptuno.xml") //proveedores
    where $art/NombreCategoria="alimentación" and $art/ReferenciaProveedor=$prov/ReferenciaProveedor
return 
  <tr> 
    <td> {$art/RefArticulo/text()}</td>
    <td> {$art/NombreArticulo/text()}</td>
    <td> {$prov/ReferenciaProveedor/text()}</td> 
    <td> {$prov/NombreProveedor/text()}</td>
  </tr>
}
</table>
</body>
</html>
```