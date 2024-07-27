# Online Store
Estructura del Proyecto
Organiza los archivos de tu proyecto de la siguiente manera:
project-root/
├── db/
│   ├── sql/
│   │   ├── create_schema.sql
│   │   └── data.sql
│   └── mongo/
│       └── init-mongo.js
├── docker-compose.yml
└── src/
    ├── main/
    │   ├── java/
    │   │   └── com/
    │   │       └── example/
    │   │           └── ecommerce/
    │   │               ├── controller/
    │   │               ├── model/
    │   │               ├── repository/
    │   │               └── service/
    │   └── resources/
    │       └── application.properties
    └── test/
