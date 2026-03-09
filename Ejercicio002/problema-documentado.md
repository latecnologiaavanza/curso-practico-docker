## 🧪 Ejercicio 2: Crear un contenedor Ubuntu y ejecutar comandos básicos

### 🎯 Objetivo

Familiarizarse con el uso de **contenedores Docker en modo interactivo**, ejecutando comandos básicos dentro de un contenedor Linux.

---

### 📋 Instrucciones

1. Inicia un contenedor interactivo usando la imagen `ubuntu:20.04` y accede a la terminal `bash`.
2. Actualiza la lista de paquetes del sistema.
3. Instala el editor de texto `nano`.
4. Crea un archivo llamado `hola.txt` con el contenido **"Hola Docker"**.
5. Sal del contenedor y elimínalo.

---

## ✅ Solución paso a paso

### 1️⃣ Iniciar el contenedor Ubuntu en modo interactivo

```bash
docker run -it --name mi-ubuntu-ejercicio ubuntu:20.04 bash
```

---

### 2️⃣ Actualizar la lista de paquetes

*(Ejecutar dentro del contenedor)*

```bash
apt-get update
```

---

### 3️⃣ Instalar el paquete `nano`

*(Ejecutar dentro del contenedor)*

```bash
apt-get install -y nano
```

---

### 4️⃣ Crear el archivo `hola.txt`

*(Ejecutar dentro del contenedor)*

```bash
echo "Hola Docker" > hola.txt
```

Opcionalmente, puedes verificar su contenido:

```bash
cat hola.txt
```

---

### 5️⃣ Salir del contenedor y eliminarlo

Salir del contenedor:

```bash
exit
```

Eliminar el contenedor desde el host:

```bash
docker rm mi-ubuntu-ejercicio
```

---

### 📝 Resultado esperado

* Se ejecutó un contenedor Ubuntu de forma interactiva.
* Se instalaron paquetes dentro del contenedor.
* Se creó un archivo correctamente.
* El contenedor fue eliminado sin dejar residuos.

---