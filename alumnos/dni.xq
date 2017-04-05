for $x in doc("alumnos.xml")//alumno
where $x/dni='11111111h'
return $x/nombre