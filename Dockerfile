# Usa una imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala Poetry
RUN pip install poetry

# Copia los archivos de dependencias al contenedor
COPY pyproject.toml poetry.lock ./

# Instala las dependencias del proyecto
RUN poetry install --no-root

# Copia el resto de los archivos del proyecto al contenedor
COPY . .

# Expone el puerto que usará la aplicación
EXPOSE 8000

# Comando por defecto para ejecutar la aplicación
CMD ["poetry", "run", "python", "main.py"]
