for $x in doc("alumnos.xml")//alumno
where $x/edad > 22
return $x/nombre