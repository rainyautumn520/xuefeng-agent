FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt 2>/dev/null; true
EXPOSE 8765
CMD ["python", "server.py"]
