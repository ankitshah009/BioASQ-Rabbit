FROM docker.lappsgrid.org/deiis/base

RUN pip install nltk sklearn werkzeug lxml diskcache pyquery pika==0.12 pymetamap
COPY ./root/
WORKDIR /root
ENTRYPOINT ["python","service.py"]
