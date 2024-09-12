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
    where $art/NombreCategoria="alimentacion" and $art/ReferenciaProveedor=$prov/ReferenciaProveedor
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
