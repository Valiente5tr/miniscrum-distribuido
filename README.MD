MiniScrum Distribuido

## Objetivo

Explicar brevemente que hace la aplicacion.

## Arquitectura

Navegador -> Node Gateway -> PHP API -> MySQL
Navegador -> Node Gateway -> Python ML API

## Servicios

- gateway: frontend y API Gateway.
- php-api: CRUD de tareas.
- python-ml: prediccion de puntos Scrum.
- mysql: base de datos relacional.

## Endpoints principales

- GET /api/tasks
- POST /api/tasks
- PUT /api/tasks/:id/status
- POST /api/predict

## Base de datos

Tabla principal: tasks.

## Como ejecutar localmente

docker compose up --build

## URL desplegada

http://miniscrumvaliente5tr-miniscrumgood-vvbq6-7f8f47-10-14-255-92.traefik.me/

## Evidencias

Agregar capturas de:
- aplicacion funcionando
- tareas guardadas
- contenedores activos
- repositorio con commits

## Retrospectiva

Que salió bien:
La orquestación de microservicios mediante Docker Compose, logrando que tecnologías tan distintas (PHP, Python, Node y MySQL) se comuniquen correctamente y el despliegue automatizado en Dokploy una vez superados los bloqueos de permisos.
Que fue difícil:
La gestión de permisos y redes en el entorno de despliegue, específicamente lidiar con los conflictos de puertos (puerto 3000 ocupado) y la configuración de acceso (SSH/Tokens) para clonar repositorios privados en un servidor remoto.
Que mejoraría:
Implementar un servidor de logs centralizado para depurar errores de conexión entre servicios más rápido y añadir una capa de validación de salud (healthchecks) en el Docker Compose para asegurar que la API no intente conectar a MySQL antes de que la base de datos esté lista.