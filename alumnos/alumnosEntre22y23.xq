for $x in doc("alumnos.xml")//alumno
where $x/edad > 22 and $x/edad < 24
return $x/nombre