#!/bin/bash

# Install dependencies
composer install --ignore-platform-reqs

# Clean up
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

# Generate app key
php artisan key:generate

# Link storage folder
rm -rf ./public/storage
php artisan storage:link

php artisan migrate:fresh

php artisan parse:csv

exec "$@"
