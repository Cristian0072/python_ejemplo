# Utiliza una imagen base de Python
FROM python:latest

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo requirements.txt y lo instala
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación
COPY . .

# Expone el puerto en el que la aplicación Flask se ejecutará
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
