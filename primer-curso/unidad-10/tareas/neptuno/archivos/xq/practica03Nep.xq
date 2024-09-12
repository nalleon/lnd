for $cliente in doc ("neptuno.xml") //clientes
where $cliente/CiudadCliente="París"

return 
<Resultado>
<li>{$cliente/RefCliente/text()}</li>
<li>{$cliente/NombreCliente/text()}</li>
<li>{$cliente/DireccionCliente/text()}</li>
</Resultado>