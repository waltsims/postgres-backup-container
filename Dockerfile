FROM postgres:11.6-alpine

ENV PGHOST='localhost'
ENV PGPORT='5432'
ENV PGDATABASE='postgres'
ENV PGUSER='postgres@postgres'
ENV PGPASSWORD='password'

RUN apk update
RUN apk add postgresql

COPY dumpDatabase.sh .

ENTRYPOINT [ "/bin/sh" ]
CMD [ "./dumpDatabase.sh" ]
