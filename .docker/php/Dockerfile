FROM eduzz/php:8.0-fpm

COPY ./php/scripts/ /tmp/scripts/

RUN chmod +x -R /tmp/scripts/

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENTRYPOINT ["/tmp/scripts/init.sh"]

EXPOSE 9000

CMD ["php-fpm"]
