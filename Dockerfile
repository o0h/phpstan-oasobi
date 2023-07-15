ARG VARIANT=8-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/php:${VARIANT}

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN docker-php-ext-enable xdebug
