FROM minio/mc
MAINTAINER garrett@garrettboast.com

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x,ugo=r /entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]

CMD ["bash"]