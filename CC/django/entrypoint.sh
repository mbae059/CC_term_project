#!/bin/bash

# Wait for MySQL server to be ready
dockerize -wait tcp://group_db:3306 -timeout 60s

# Apply database migrations
python manage.py migrate

# Start the Django server
python manage.py runserver 0.0.0.0:8000
