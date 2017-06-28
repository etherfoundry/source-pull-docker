FROM minio/mc
MAINTAINER garrett@garrettboast.com

COPY entrypoint.sh /bin/entrypoint.sh
RUN ln -s /bin/entrypoint.sh /entrypoint.sh \
	&& chmod a=rx /bin/entrypoint.sh \
	&& mkdir -p /deploy/

ENTRYPOINT ["entrypoint.sh"]

CMD ["bash"]