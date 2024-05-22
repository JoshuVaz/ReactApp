# App Web con React y Laravel

Este es un sistema web que cuenta con un inicio de sesión, registro, pagina de inicio y menu de usuarios. Se programo usando Laravel para el backend y React para el frontend.

El sistema esta divido en dos carpetas que corresponden al frontend y al backend, mas adelante estaran las instrucciones para poder corres ambos sistemas y poder visualizar el sistema

> [!CAUTION]
> Todo se debe correr dentro de la carpeta de backend para que funcione

## Variable de Entorno

Para desplegar el sistema es necesario clonar el repositorio, una vez clonado debes renombrar el archivo .env.example a .env con los datos correspondientes a la base de datos.

```bash 
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=nombre_de_tu_base_de_datos
DB_USERNAME=tu_usuario
DB_PASSWORD=tu_contraseña

```

## Despliegue

Para hacer el despliegue hay que correr los siguientes comandos para instalar los archivos restantes:

```bash
composer require laravel/sanctum
```

```bash
php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"
```

## Correr en Local

Para correr en local tendremos que posicionarnos en la carpeta de backend y colocar los sigoioentes comandos para iniciar el servicio:

- Backend

```bash
  php artisan migrate
  php artisan serve
```