FROM minio/mc
MAINTAINER garrett@garrettboast.com

COPY entrypoint.sh /entrypoint.sh
RUN ln -s /bin/entrypoint.sh /entrypoint.sh
RUN chmod a=rx /entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]

CMD ["bash"]