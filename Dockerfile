FROM registry.access.redhat.com/ubi8/ubi:latest

CMD mkdir /licenses/
COPY LICENSE /licenses/

COPY --chown=1001 entrypoint.sh /

USER 1001

ENTRYPOINT ["/entrypoint.sh"]
