# Використовуємо офіційний Python-образ
FROM python

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо файли залежностей у контейнер
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install -r requirements.txt

# Копіюємо весь проект у контейнер
COPY . .

# Відкриваємо порт 8003
EXPOSE 8003

# Команда для запуску сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8003"]