FROM minio/mc
MAINTAINER garrett@garrettboast.com

COPY entrypoint.sh /entrypoint.sh
RUN ln -s /bin/docker-entrypoint.sh /entrypoint.sh
RUN chmod a=rx /entrypoint.sh


ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["bash"]