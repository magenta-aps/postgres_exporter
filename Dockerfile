FROM wrouesnel/postgres_exporter
FROM debian:10
RUN useradd -u 20001 postgres_exporter
USER postgres_exporter
COPY --from=0 /postgres_exporter /postgres_exporter
EXPOSE 9187
ENTRYPOINT [ "/postgres_exporter" ]
