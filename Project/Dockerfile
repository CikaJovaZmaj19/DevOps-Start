# Koristimo zvaničnu Python sliku
FROM python:3.11-slim

# Postavljamo radni direktorijum unutar kontejnera
WORKDIR /app

# Kopiramo requirements i instaliramo biblioteke
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopiramo tvoj main.py kod u kontejner
COPY . .

# Komanda koja pokreće tvoju skriptu
CMD ["python", "main.py"]
