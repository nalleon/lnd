<html>
<head><title>Consulta Cliente </title></head>
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
    <td> {$cliente/NombreCliente/text()}</td>
    <td> {$cliente/PaisCliente/text()}</td>   
    <td> {$cliente/CodPostalCliente/text()}</td> 
    <td> {$cliente/CiudadCliente/text()}</td> 
    <td> {$cliente/TelefornoCliente/text()}</td> 
  </tr>
}
</table>
</body>
</html>
