FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && apk add --no-cache python py-pip bash\
    && mkdir /pythonapplication 

RUN pip install Flask

COPY pythonapplication.py /pythonapplication/pythonapplication.py

EXPOSE 80

CMD ["python", "/pythonapplication/pythonapplication.py"]

