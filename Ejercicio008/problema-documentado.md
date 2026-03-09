## Ejercicio #8

Vamos a simular un escenario real: una aplicación backend que se conecta a una base de datos PostgreSQL.

### Paso 1: Crear la red

```bash
docker network create app-network
```

Esta red actuará como una **red privada de la aplicación**.

---

### Paso 2: Lanzar la base de datos

```bash
docker run -d \
  --name mi-postgres-db \
  --network app-network \
  -e POSTGRES_PASSWORD=mi-clave-secreta \
  postgres:14-alpine
```

**Explicación**:

* `--name mi-postgres-db`: nombre lógico del contenedor
* `--network app-network`: lo conecta a la red
* `POSTGRES_PASSWORD`: variable requerida por PostgreSQL

---

### Paso 3: Verificar conectividad

Creamos un contenedor temporal para probar la comunicación.

```bash
docker run -it --rm --network app-network alpine sh
```

Dentro del contenedor:

```bash
apk add --no-cache iputils
ping mi-postgres-db
```

**Resultado esperado**:

* El nombre `mi-postgres-db` se resuelve automáticamente
* Recibe respuesta

Esto demuestra que **el DNS interno de Docker funciona**.

---