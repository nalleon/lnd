<div align="justify">

**Nabil L. A. - 1ºDAM**
***
## Índice

***

## Bailes


### Práctica 01
```code
for $baile in doc ("bailes.xml") //bailes/baile/nombre/text()
return $baile
```

### Práctica 02
```code
for $baile in doc ("bailes.xml") //bailes/baile
return
<baile>
<nombre>{$baile/nombre/text()}</nombre>
<precio>{$baile/precio/text()}</precio>
</baile>
```
###  Práctica 03
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
```code
for $baile in doc ("bailes.xml") //bailes/baile
order by $baile/nombre/text()
return  $baile/nombre/text()
<baile>
<nombre>{$baile/nombre/text()}</nombre>
</baile>
```
###  Práctica 05
```code
for $baile in doc ("bailes.xml") //bailes/baile
where contains($baile/nombre/text(), 'a')
return $baile/nombre/text()
```
###  Práctica 06
```code
for $baile in doc ("bailes.xml") //bailes/baile
where contains($baile/profesor/text(), 'Lozano')
return $baile/profesor/text()
```
###  Práctica 07
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile[@id!='3']) and  ($baile[@id!='5'])
return $baile/nombre/text()
```
###  Práctica 08
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile/precio[@cuota='Mensual'])
return $baile/profesor/text()
```
###  Práctica 09
```code
for $baile in doc ("bailes.xml") //bailes/baile
where ($baile/precio[@moneda='Euros'] and $baile/sala='1')
return $baile/profesor/text()
```
###  Práctica 10
```code
for $baile in doc ("bailes.xml") //bailes/baile

return $baile/(precio*plazas)
```
###  Práctica 11
```code
for $baile in doc ("bailes.xml") //bailes/baile
where $baile/precio[@moneda='Dolares'] 
return $baile/(precio*plazas)
```
### Práctica 12
```code
for $baile in doc ("bailes.xml")//bailes/baile
where $baile/sala[text()=1 and ../precio/@moneda="euro" and ../number(precio) < 35]
return $baile/nombre/text()
```

***
## Otros y Books

### Práctica 13
```code
for $pepe in (1 to 5)
let $pepe :=(1 to 5)
(:Si añadimos count hacemos salto de línea:)
return <a>{$pepe}</a>
```
### Práctica 14
```code
for $pepe in (1 to 5)
let $pepe :=('hola','adios','chao')
return <a>{$pepe}</a>
```
### Práctica 15
```code
for $b in doc ("books.xml") //book
let $c:=$b/author
return
<libro>{$b/title,<autores>{count($c)}</autores>}</libro>
```
### Práctica 16
```code

```
### Práctica 17
```code

```
### Práctica 18
```code

```
### Práctica 19
```code

```
## Alumnos (dossier)
### Práctica 20
```code

```
</div>