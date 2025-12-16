## 🏛️ # **SISTEMA DE GESTIÓN INTEGRAL DE INSCRIPCIONES A CONCURSOS**

📖 ÍNDICE

 1. 🎯 Objetivo del Sistema
 2. 🚀 Características Principales
 3. 🛠️ Stack Tecnológico
 4. 🏗️ Arquitectura del Sistema
 5. 📁 Estructura del Proyecto
 6. 🗄️ Base de Datos
 7. ⚙️ Configuración del Entorno
 8. 👥 Roles de Usuario
 9. 📋 Módulos del Sistema
 10. 🔐 Seguridad
 11. 📧 Sistema de Comunicaciones
 12. 📊 Reportes y Exportaciones
 13. 🔄 Automatizaciones

🎯 OBJETIVO DEL SISTEMA

Desarrollar una plataforma web integral para la gestión digital de inscripciones a concursos, jurados y audiencias públicas, migrando los procesos manuales actuales a un sistema centralizado, seguro y automatizado.

Objetivos específicos:
 Digitalizar el proceso completo de inscripciones
 Garantizar trazabilidad y seguridad de los datos
 Automatizar comunicaciones y notificaciones
 Generar reportes oficiales automáticos
 Mejorar la experiencia del usuario postulante
 Optimizar el trabajo administrativo

🚀 CARACTERÍSTICAS PRINCIPALES

Para Postulantes:

- ✅ Formulario de inscripción online estilo Google Forms
- ⏰ Control estricto de fechas y horas de vigencia
- 📄 Carga digital de documentación (PDF, imágenes)
- 📧 Confirmación automática por email
- 🔍 Consulta de estado de inscripción

Para Administradores:

📊 Dashboard con métricas en tiempo real
👥 Gestión completa de concursos (CRUD)
🔍 Filtros avanzados de inscripciones
📋 Inscripción manual para Mesa de Entradas
📤 Exportación a Excel y PDF
📨 Sistema de notificaciones automáticas

Para el Sistema:

🔐 Autenticación segura por roles
📝 Logs de auditoría completos
🔄 Backups automáticos de base de datos
⚙️ Configuración centralizada
📧 Plantillas de email personalizables

🛠️ STACK TECNOLÓGICO

Backend:
Framework: CodeIgniter 3.1.13
PHP: 7.3.x (requerido)
Frontend:
CSS Framework: Bootswatch Simplex
JavaScript: Vanilla JS + jQuery 3.6
Iconos: Bootstrap Icons 1.10
Responsive: Bootstrap 5.3

Base de Datos:

Motor: MySQL 5.7.x
Charset: utf8mb4
Collation: utf8mb4_unicode_ci

Servicios Externos:

Email: SMTP (configurable)
Captcha: reCAPTCHA v2

## 📁 Estructura del Proyecto
  
SiGI/
├── docker/                    # Configuración Docker (solo desarrollo)
│   ├── Dockerfile            # Imagen PHP 7.3 + Apache
│   ├── php.ini              # Configuración PHP personalizada
├── src/                      # Código fuente de la aplicación
│   ├── application/
│   │   ├── config/          # Configuración CodeIgniter
│   │   ├── controllers/     # Controladores
│   │   ├── models/         # Modelos de datos
│   │   ├── views/          # Vistas
│   │   ├── libraries/      # Librerías personalizadas
│   │   ├── helpers/        # Helpers
│   │   ├── language/       # Internacionalización
│   │   ├── cache/          # Cache (no subir a Git)
│   │   └── logs/           # Logs (no subir a Git)
│   ├── system/             # Core de CodeIgniter 3
│   ├── index.php           # Punto de entrada
│   ├── .htaccess          # Reglas Apache
│   ├── assets/            # CSS, JS, imágenes
│   │   ├── css/
│   │   ├── js/
│   │   └── images/
│   └── uploads/           # Archivos subidos por usuarios
│       ├── documentos/
│       ├── fotos/
│       └── tmp/
├── database/
│   ├── schema.sql         # Estructura de base de datos
│   ├── seed.sql          # Datos iniciales
│   └── migrations/       # Migraciones (si aplica)
├── docs/                # Documentación
├── docker-compose.yml   # Orquestación de contenedores
├── .env.example        # Variables de entorno local
├── .gitignore          # Archivos ignorados por Git
└── README.md           # Este archivo

## 🐳 Desarrollo con Docker

### Primeros Pasos

1. **Clonar el repositorio:**
    git clone [https://github.com/noandalabarraespaciadora/SiGI.git](https://github.com/noandalabarraespaciadora/SiGI.git)
    cd SiGI

2. **Configurar variables de entorno:**
    cp .env.example .env

3. **Editar .env con tus configuraciones**

4. **Construir y levantar contenedores:**
     docker-compose up -d --build

5. **Acceder a la aplicación:**

    - **Aplicación:**  [http://localhost:8080](http://localhost:8080/)

    - **PHPMyAdmin:**  [http://localhost:8081](http://localhost:8081/)

    - **MySQL:** [http://localhost:3306](http://localhost:3306/)
