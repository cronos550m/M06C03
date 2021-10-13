# M06C03 
## Trabajo individual entregable de base de datos

- Base de datos relacional uno a muchos, muchos a uno y muchos a muchos
- Diagrama de flujos
- Ejemplo de consulta relacionando todas las tablas

#### Diagrama de flujos

![](https://github.com/cronos550m/M06C03/blob/master/M06C03/DiagramaDB.jpg?raw=true)

### Ejemplo de consulta

```SQL
SELECT usuarios.Nombre, categorias.Categoria, notas.titulo AS Titulo, notas.descripcion AS Descripción 
FROM notascategorias
INNER JOIN categorias ON notascategorias.idCategorias = categorias.id
INNER JOIN notas ON notascategorias.idNotas = notas.id
INNER JOIN usuarios ON notas.id = usuarios.idNotas
```

![](https://github.com/cronos550m/M06C03/blob/ffc77938e2e925a50bc44b51cc92bc66921ab605/M06C03/Consulta.jpg)

### Links

- [HTML de diagrama de flujos](https://github.com/cronos550m/M06C03/blob/76bc2f475de04f77dc2ea9000bded1c6583e0966/M06C03/M06C03%20Entregable.html)
- [Imagen de diagrama de flujos](https://github.com/cronos550m/M06C03/blob/76bc2f475de04f77dc2ea9000bded1c6583e0966/M06C03/DiagramaDB.jpg)
- [Base de datos](https://github.com/cronos550m/M06C03/blob/76bc2f475de04f77dc2ea9000bded1c6583e0966/M06C03/M06C03%20notas-db.sql)


