# Laboratorio 6 - Base de Datos en Grafo con Neo4j

Este proyecto contiene el script necesario para la creación de un modelo de base de datos orientada a grafos manejado en **Neo4j Aura**. El dominio del modelo representa un sistema de cursos en línea, incluyendo estudiantes, cursos, instructores y categorías.

## Nodos y Entidades

El grafo incluye los siguientes **Nodos**:
- **`Student` (Estudiante):** Representa a un alumno con atributos como `id`, `name`, `age`, `email`, y `country`.
- **`Course` (Curso):** Representa las clases disponibles con atributos como `id`, `title`, `duration`, `level`, y `price`.
- **`Instructor` (Profesor):** Los encargados de impartir clases, con `id`, `name`, `experience`, `specialty`, y `rating`.
- **`Category` (Categoría):** Agrupación temática de los cursos con `id`, `name`, `description`, `difficulty`, y `popularity`.

## Relaciones

Las interacciones dentro del grafo se representan con las siguientes **Relaciones**:
- `(Student)-[:ENROLLED]->(Course)`: Indica que un estudiante está inscrito en determinado curso.
- `(Student)-[:RATED]->(Course)`: Indica la puntuación (`score`) que un alumno le dio a un curso.
- `(Instructor)-[:TEACHES]->(Course)`: Determina qué instructor imparte un curso.
- `(Course)-[:BELONGS_TO]->(Category)`: Clasifica el curso bajo una categoría específica.
- `(Student)-[:FRIEND]->(Student)`: Una relación bidireccional que marca la amistad o conexión de red entre dos alumnos.

## Archivos

- `script.cql`: El archivo principal escrito en **Cypher Query Language (CQL)** que contiene en un único bloque `CREATE` todos los metadatos necesarios para establecer la base de los nodos y sus respectivas aristas o relaciones al mismo tiempo.


## Ejecución de prueba
Para verificar y visualizar libremente que todo tu grafo se haya importado de manera exitosa, ejecuta la siguiente consulta en la misma consola de Neo4j Aura:
```cypher
MATCH (n) RETURN n
```
