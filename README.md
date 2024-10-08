
# Base de Datos U_Campus

## Descripción

La base de datos `U_Campus` está diseñada para gestionar información sobre estudiantes, docentes, cursos, aulas, horarios y su relación en un entorno académico. Este sistema facilita la administración y el acceso a los datos relevantes para la gestión de un campus universitario.

## Estructura de la Base de Datos

La base de datos consta de las siguientes tablas:

1. **Estudiante**: Almacena información sobre los estudiantes.
   - `ID_Estudiante`: Identificador único (clave primaria).
   - `Nombre_Estudiante`: Nombre del estudiante.
   - `Apellido_Estudiante`: Apellido del estudiante.
   - `Edad`: Edad del estudiante.

2. **Docente**: Almacena información sobre los docentes.
   - `ID_Docente`: Identificador único (clave primaria).
   - `Nombre_Docente`: Nombre del docente.
   - `Apellido_Docente`: Apellido del docente.
   - `Edad`: Edad del docente.

3. **Cursos**: Almacena información sobre los cursos ofrecidos.
   - `ID_Cursos`: Identificador único (clave primaria).
   - `Nombre_Curso`: Nombre del curso.

4. **Aulas**: Almacena información sobre las aulas disponibles.
   - `ID_Aulas`: Identificador único (clave primaria).
   - `Nombre_Aula`: Nombre del aula.

5. **Horarios**: Almacena los horarios de las clases.
   - `ID_Horarios`: Identificador único (clave primaria).
   - `Horario`: Hora de la clase.

6. **Dias**: Almacena información sobre los días de la semana.
   - `ID_Dias`: Identificador único (clave primaria).
   - `Dia`: Nombre del día.

7. **Docentes_Cursos**: Relaciona docentes con cursos.
   - `ID_DocentesCursos`: Identificador único (clave primaria).
   - `Cursos_ID`: Identificador del curso.
   - `Docente_ID`: Identificador del docente.

8. **Estudiantes_Cursos**: Relaciona estudiantes con cursos.
   - `ID_EstudianteCurso`: Identificador único (clave primaria).
   - `Estudiante_ID`: Identificador del estudiante.
   - `Cursos_ID`: Identificador del curso.

9. **CursosAulas**: Relaciona cursos con aulas.
   - `ID_CursosAulas`: Identificador único (clave primaria).
   - `Cursos_ID`: Identificador del curso.
   - `Aulas_ID`: Identificador del aula.

10. **AulaHorarios**: Relaciona aulas con horarios.
    - `ID_AulaHorarios`: Identificador único (clave primaria).
    - `Aulas_ID`: Identificador del aula.
    - `Horarios_ID`: Identificador del horario.

11. **DiaHorarios**: Relaciona días con horarios.
    - `ID_DiaHorarios`: Identificador único (clave primaria).
    - `Dia_ID`: Identificador del día.
    - `Horario_ID`: Identificador del horario.

## Instalación

1. Clona el repositorio:
   ```bash
   git clone <https://github.com/Kevinromero04/Ejercicio_mysql_Romero_Kevin_Pinzon_Santiago.git>
   ```
2. Accede al directorio del proyecto:
   ```bash
   cd <Ejercicio_mysql_Romero_Kevin_Pinzon_Santiago>
   ```
3. Crea la base de datos y ejecuta los scripts SQL necesarios para crear las tablas e insertar datos.

## Uso

- **Agregar Estudiantes**: Inserta nuevos registros en la tabla `Estudiante`.
- **Agregar Docentes**: Inserta nuevos registros en la tabla `Docente`.
- **Registrar Cursos**: Inserta nuevos cursos en la tabla `Cursos`.
- **Asignar Aulas y Horarios**: Utiliza las tablas `Aulas`, `Horarios`, `CursosAulas`, `AulaHorarios`, y `DiaHorarios` para gestionar las relaciones entre aulas, horarios y cursos.
- **Relaciones**: Utiliza las tablas `Docentes_Cursos` y `Estudiantes_Cursos` para asignar cursos a docentes y estudiantes respectivamente.

## Contribuciones

Si deseas contribuir a este proyecto, por favor envía un pull request o abre un issue en el repositorio correspondiente.

## Licencia

Este proyecto está bajo la Licencia MIT. Para más detalles, consulta el archivo `LICENSE`.

---

## Contacto


Para más información, contacta a [Micorreo](kevinromerorincon7@gmail.com).
Para más información, contacta a [Micorreo](santiagopinzoncruz@gmail.com).



### Notas
- Personaliza el contenido según tus necesidades, incluyendo el enlace al repositorio y cualquier información adicional que consideres relevante.
- Asegúrate de que el formato del código SQL sea legible en tu archivo README. Markdown debería manejarlo bien.
- Si necesitas ajustes o información adicional, no dudes en decírmelo.