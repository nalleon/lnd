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
