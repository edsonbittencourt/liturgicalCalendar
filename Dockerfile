FROM python:3.12

WORKDIR /app

RUN apt-get update && apt-get install -y --fix-missing --no-install-recommends \
    libpq-dev gcc postgresql-client binutils-common binutils-aarch64-linux-gnu \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN pip install -r requirements.txt

COPY scripts/waiting_psql.sh waiting_psql.sh
RUN chmod +x waiting_psql.sh

CMD ["./waiting_psql.sh", "db", "python", "main.py"]