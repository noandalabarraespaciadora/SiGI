# Dockerfile - Simplificado y funcional
FROM php:7.3-apache

# Instalar solo lo esencial para CodeIgniter 3
RUN apt-get update && apt-get install -y \
	libpng-dev \
	libjpeg62-turbo-dev \
	libfreetype6-dev \
	libzip-dev \
	libicu-dev \
	libxml2-dev \
	libonig-dev \
	libcurl4-openssl-dev \
	unzip \
	git \
	&& rm -rf /var/lib/apt/lists/*

# Extensiones mínimas requeridas
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install \
	mysqli \
	pdo_mysql \
	gd \
	mbstring \
	intl \
	zip \
	xml \
	opcache

# Otras extensiones útiles (opcionales)
RUN docker-php-ext-install \
	bcmath \
	exif \
	gettext \
	sockets \
	&& docker-php-source delete

# Mod rewrite
RUN a2enmod rewrite

# Configuración PHP
COPY php.ini /usr/local/etc/php/conf.d/

# DocumentRoot personalizado para /inscripciones
RUN sed -ri -e 's!/var/www/html!/var/www/html/inscripciones!g' /etc/apache2/sites-available/*.conf \
	&& sed -ri -e 's!/var/www/html!/var/www/html/inscripciones!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

WORKDIR /var/www/html

CMD ["apache2-foreground"]
