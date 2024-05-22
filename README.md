
# App Web con React y Laravel

Este es un sistema web que cuenta con un inicio de sesión, registro, pagina de inicio y menu de usuarios. Se programo usando Laravel para el backend y React para el frontend.

El sistema esta divido en dos carpetas que corresponden al frontend y al backend, mas adelante estaran las instrucciones para poder corres ambos sistemas y poder visualizar el sistema
 



## Instalación

Para poder correr el proyecto necesitas tener instalado lo siguiente:

- [PHP](https://windows.php.net/download#php-8.3)
- [Composer](https://getcomposer.org/download/)
- [node.js](https://nodejs.org/en/download/prebuilt-installer)
- npm


> [!TIP]
> El paquete de Node.js ya trae npm en su instalador por lo que ya no sera necesario instalarlo una vez instalado Node.js

> [!IMPORTANT]
> Recuerda usar la base de datos proporcionada para que puedas acceder o regitrarte, la base de datos es: laravelpr.sql
    
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

> [!NOTE]
> Se deben correr estos comandos dentro de la carpeta de backend


```bash
composer require laravel/sanctum
```

```bash
php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"
```

## Correr en Local

Para correr nuestros programas en local tendremos que posicionarnos en las carpetas de backend y frontend y correr en cada una los comandos:


- Backend
> [!NOTE]
> Se deben correr estos comandos dentro de la carpeta de backend

```bash
  php artisan migrate
  php artisan serve
```

- Frontend
> [!NOTE]
> Se deben correr estos comandos dentro de la carpeta de frontend

Instalar Dependencias

```bash
  npm install
```

Correr Servidor
```bash
  npm start
```


## Extra

Para ingresar al sistema debes ir al siguiente enlace http://localhost:3000/login

Para ingresar te puedes registrar o puedes ingresar con los siguientes datos:

- Correo: admin@hotmail.com
- Contraseña: admin123
