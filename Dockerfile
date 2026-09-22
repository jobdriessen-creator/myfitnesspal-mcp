FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN python -m pip install --no-cache-dir .

EXPOSE 8484

CMD ["mfp-mcp", "--http", "--host", "0.0.0.0", "--port", "8484"]
