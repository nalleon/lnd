<div align="justify">

**Nabil L. A. - 1ºDAM**
***

***

## Bailes

### Práctica 01
- Obtener los nombres de los bailes.
```code
for $baile in doc ("bailes.xml") //bailes/baile/nombre/text()
return $baile
```

### Práctica 02
- Obetener el nombre del baile y su precio con una estructura modificada.
```code
for $baile in doc ("bailes.xml") //bailes/baile
return
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>
```
###  Práctica 03
- Obetener el nombre del baile y su precio con una estructura modificada solo si el precio es mayor a 40.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where $baile/number(precio)> 40
return 
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>
```
### Práctica 04
- Obten los nombres de los bailes en orden con una nueva estructura.
```code
for $baile in doc ("bailes.xml") //bailes/baile
order by $baile/nombre/text()
return  $baile/nombre/text()
<baile>
<nombre>{$baile/nombre/text()}</nombre>
</baile>
```
###  Práctica 05
- Obtener los nombres de los bailes que contengan la letra 'a'.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where contains($baile/nombre/text(), 'a')
return $baile/nombre/text()
```
###  Práctica 06
- Obtener los nombres de los profesores que contengan 'Lozano'.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where contains($baile/profesor/text(), 'Lozano')
return $baile/profesor/text()
```
###  Práctica 07
- Obtener los nombres de los bailes cuyod id no son 3 o 5.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile[@id!='3']) and  ($baile[@id!='5'])
return $baile/nombre/text()
```
###  Práctica 08
- Obtener los nombres de los profesores cuando la cuata sea mensual.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile/precio[@cuota='Mensual'])
return $baile/profesor/text()
```
###  Práctica 09
- Obtener el nombre del profesor cuando la moneda sea euros y este en la primera sala.
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile/precio[@moneda='Euros'] and $baile/sala='1')
return $baile/profesor/text()
```
###  Práctica 10
- Obetener el valor numerico del precio por plaza.
```code
for $baile in doc ("bailes.xml") //bailes/baile
return $baile/(precio * plazas)
```
###  Práctica 11
-  Obetener el valor numerico del precio por plaza cuando la moneda sea dolares.

```code
for $baile in doc ("bailes.xml") //bailes/baile
where $baile/precio[@moneda='Dolares'] 
return $baile/(precio*plazas)
```
### Práctica 12
- Obtener el nombre del baile que se realiza en la sala 1, su moneda sea el euro y su precio sea menor a 35.
```code
for $baile in doc ("bailes.xml")//bailes/baile
where $baile/sala[text()=1 and ../precio/@moneda="euro" and ../number(precio) < 35]
return $baile/nombre/text()
```

### Práctica 13
- Obtener una base de pagina web con el nombre y el precio de los bailes
```code
<html>
<head><title>Consulta pagina web de bailes de </title></head>
<body> 
<table border="2"> 
  <tr> 
    <td> Nombre Baile </td>
    <td> Precio Baile </td>
  </tr>
  
{ for $baile in doc ("bailes.xml") //bailes/baile
where $baile/number(precio)> 20 
return 
  <tr> 
    <td> {$baile/nombre/text()}</td>
    <td>{$baile/precio/text()}</td> 
  </tr>
}
</table>
</body>
</html>
```
</div>