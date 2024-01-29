<div align="justify">

**Nabil L. A. - 1ºDAM**
***
## Books y otros

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