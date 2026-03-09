## Ejercicio 1: Ejecutar un servidor web Nginx

### 📌 ¿Qué es Nginx?

Nginx es un **servidor web** muy popular, ligero y rápido, usado para servir páginas web y como proxy inverso.

### 🚀 Comando

```bash
docker run --name mi-servidor-web -p 8080:80 -d nginx
```

### 🔍 Explicación de los parámetros

| Parámetro                | Explicación                                        |
| ------------------------ | -------------------------------------------------- |
| `--name mi-servidor-web` | Asigna un nombre legible al contenedor             |
| `-p 8080:80`             | Mapea el puerto 80 del contenedor al 8080 del host |
| `-d`                     | Ejecuta el contenedor en segundo plano (detached)  |
| `nginx`                  | Imagen oficial de Nginx desde Docker Hub           |

### 🌐 Resultado

* Abre tu navegador
* Ve a 👉 **[http://localhost:8080](http://localhost:8080)**
* Verás la **página de bienvenida de Nginx**


🎉 **¡Has desplegado un servidor web en segundos!**  

---
