for $alumno in doc("alumnos.xml")//alumno,
    $profesor in doc("profesores.xml")//profesor
where $profesor/nombre = "Tiburcio" and $alumno/nombre = $profesor/alumno
return <alumno>{$alumno/nombre} {$alumno/edad} </alumno>