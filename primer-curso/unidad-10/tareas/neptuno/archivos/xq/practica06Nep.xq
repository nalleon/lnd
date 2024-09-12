<html>
<head><title>Consulta Proveedor </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Ref Cliente </td>
    <td> Nombre Cliente</td>
    <td> Ref Artículo</td>
  </tr>
  
{ for $prov in doc ("neptuno.xml") /neptuno
return 
  <tr> 
    <td> {$prov/proveedores/ReferenciaProveedor/text()}</td>
    <td> {$prov/articulos/RefArticulo/text()}</td>
    <td> {$prov/articulos/NombreArticulo/text()}</td> 
  </tr>
}
</table>
</body>
</html>
