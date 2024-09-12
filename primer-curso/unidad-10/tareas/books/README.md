<div align="justify">

**[Nabil L. A. - 1ºDAM](https://github.com/nalleon/lnd/tree/main/unidad-10/tareas/books)** 
***
## Books


### Práctica 01
```code
for $b in doc ("books.xml") //book
let $c:=$b/author
return
<libro>{$b/title,<autores>{count($c)}</autores>}</libro>
```

### Práctica 02
```code
for $x in doc("books.xml")/bookstore/book
where $x/price>30
return $x/title
```
### Práctica 03
```code
for $x in doc("books.xml")/bookstore/book
where $x/price>30
order by $x/title
return $x/title 
```

### Práctica 04
```code
for $x in doc("books.xml")/bookstore/book/title
order by $x
return $x 
```


### Práctica 05
```code
<ul>
{
for $x in doc("books.xml")/bookstore/book/title
order by $x
return <li>{$x}</li>
}
</ul> 
```

### Práctica 06
```code
<ul>
{
for $x in doc("books.xml")/bookstore/book/title
order by $x
return <li>{data($x)}</li>
}
</ul> 
```

### Práctica 07
```code
for $x in doc("books.xml")/bookstore/book
return if ($x/@category="children")
then <child>{data($x/title)}</child>
else <adult>{data($x/title)}</adult> 
```
### Práctica 08
```code
for $x in doc("books.xml")/bookstore/book/title
order by $x
return $x
```

### Práctica 09
```code
<html>
<body>
<h1>Bookstore</h1>
<ul>
{
for $x in doc("books.xml")/bookstore/book
order by $x/title
return <li>{data($x/title)}. Category: {data($x/@category)}</li>
}
</ul>
</body>
</html>
```

### Práctica 10
```code
<html>
<body>
<h1>Bookstore</h1>
<ul>
{
for $x in doc("books.xml")/bookstore/book
order by $x/title
return <li class="{data($x/@category)}">{data($x/title)}</li>
}
</ul>
</body>
</html> 
```

### Práctica 11
```code
for $x in doc("books.xml")/bookstore/book
where $x/price>30
order by $x/title
return $x/title 
```

### Práctica 12
```code
for $x at $i in doc("books.xml")/bookstore/book/title
return <book>{$i}. {data($x)}</book> 
```

### Práctica 13
```code
for $x in (1 to 5)
return <test>{$x}</test> 
```

### Práctica 14
```code
for $x in (10,20), $y in (100,200)
return <test>x={$x} and y={$y}</test> 
```

### Práctica 15
```code
let $x := (1 to 5)
return <test>{$x}</test> 
```

### Práctica 16
```code
for $x in doc("books.xml")/bookstore/book
order by $x/@category, $x/title
return $x/title 
```

### Práctica 17
```code
for $x in doc("books.xml")/bookstore/book
return $x/title 
```

### Práctica 18
```code
declare function local:minPrice($p as xs:decimal?,$d as xs:decimal?)
as xs:decimal?
{
let $disc := ($p * $d) div 100
return ($p - $disc)
};

Below is an example of how to call the function above:

<minPrice>{local:minPrice($book/price,$book/discount)}</minPrice> 
```
### Práctica 19
```code
for $pepe in (1 to 5)
let $pepe :=(1 to 5)
(:Si añadimos count hacemos salto de línea:)
return <a>{$pepe}</a>
```
### Práctica 20
```code
for $pepe in (1 to 5)
let $pepe :=('hola','adios','chao')
return <a>{$pepe}</a>
```

</div>