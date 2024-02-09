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
