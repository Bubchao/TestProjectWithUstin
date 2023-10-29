FROM python:3.9

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы зависимостей
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы проекта внутрь контейнера
COPY . .

# Запускаем команду для запуска сервера Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]