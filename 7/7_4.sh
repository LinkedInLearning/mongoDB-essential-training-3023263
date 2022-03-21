pecl install mongodb
php --ini
echo "extension=mongodb.so" >>  /usr/local/etc/php/8.1/php.ini
composer --version
composer require mongodb/mongodb
composer require vlucas/phpdotenv
php index.php