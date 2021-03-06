FROM node:with-uno

ENV APP_HOST=0.0.0.0
ENV APP_PORT=3000
ENV DB_NAME=doc-manage
ENV MONGO_HOST=0.0.0.0
ENV MONGO_PORT=27017
ENV IS_HTTPS=0
ENV NODE_ENV=development

RUN mkdir -p /tmp/files

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .

RUN npm install
CMD ["/bin/bash", "entrypoint.sh"]