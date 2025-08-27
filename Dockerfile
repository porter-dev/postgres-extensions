FROM pgvector/pgvector:pg16 AS builder

FROM porterhub/postgresql-managed:16.1.0-debian-11-r16

COPY --from=builder /usr/lib/postgresql/16/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/16/extension/vector* /opt/bitnami/postgresql/share/extension/
