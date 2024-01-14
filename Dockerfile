
FROM python:3.8

WORKDIR /app

COPY . /app

# Install requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Reset the database
RUN export FLASK_APP=core/server.py && rm core/store.sqlite3 && flask db upgrade -d core/migrations/

#port
EXPOSE 7755
#env
ENV NAME World
#run
CMD ["bash", "run.sh"]