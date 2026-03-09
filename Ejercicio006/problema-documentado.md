## Ejercicio #6

Para montar un volumen se usa `-v` o `--mount`.

### Sintaxis básica con `-v`

```text
<nombre_volumen>:<ruta_en_contenedor>
```

---

### Ejemplo paso a paso

Ejecutamos un contenedor de Ubuntu con un volumen:

```bash
docker run -it --name mi-ubuntu-con-volumen \
-v mis-datos-db:/app/data ubuntu
```

Dentro del contenedor:

```bash
echo "Este es un dato persistente" > /app/data/mi_archivo.txt
exit
```

Eliminamos el contenedor:

```bash
docker rm mi-ubuntu-con-volumen
```

Creamos otro contenedor usando el mismo volumen:

```bash
docker run -it --name otro-ubuntu \
-v mis-datos-db:/app/data ubuntu
```

Verificamos el archivo:

```bash
cat /app/data/mi_archivo.txt
```

✔ El dato **sigue existiendo**.

---

