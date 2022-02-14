Para realizar pruebas sobre el ejercicio realizado

1- Configurar .env con su usuario y contraseña

2 Crear base de datos nombrada laravel

3 correr script ubicado en sctipts/schema.sql 
creara la tabla de superheroes y importara el file ubicado en csv/superheros.csv
en INFILE '~/php-laravel-exercise/csv/superheros.csv' cambiar por la ruta donde tengan ubicado
el superheros.csv

4 correr el comando sh scripts/install.sh

5 levantar el proyecto local  php artisan serve
 y realiar distintas pruebas

http://127.0.0.1:8000/api/superheros/publisher?publisher=Marvel Comics&eyeColor=Blue&hairColor=red //busqueda por publicacion, color de ojos

http://127.0.0.1:8000/api/superheros/publisher?eyeColor=Blue&hairColor=red // error debe ingresar al menos 3 parametros


