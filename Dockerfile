FROM alpine:3.9

ARG VERSION

COPY php-fpm_exporter /

EXPOSE     9253
ENTRYPOINT [ "/php-fpm_exporter", "server" ]

LABEL org.label-schema.name="php-fpm_exporter" \
      org.label-schema.description="A prometheus exporter for PHP-FPM." \
      org.label-schema.url="https://www.peopleperhour.com/" \
      org.label-schema.vcs-url="https://github.com/PeoplePerHour/php-fpm_exporter" \
      org.label-schema.vendor="pph" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"