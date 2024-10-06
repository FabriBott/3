# Travel Experiences Backend

Este proyecto es el backend de una red social orientada a compartir experiencias de viaje.

## Requisitos

- Docker
- Docker Compose
- Poetry

## Iniciar el Proyecto

1. Clonar el repositorio.
2. Instalar dependencias con Poetry:

    ```bash
    poetry install
    ```

3. Levantar los contenedores de Docker:

    ```bash
    docker-compose up -d
    ```

4. Ejecutar los tests:

    ```bash
    poetry run pytest
    ```

Accede a la aplicación FastAPI en `http://localhost:8000`.
