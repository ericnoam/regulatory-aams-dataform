FROM mhart/alpine-node:16.4.2
WORKDIR /app
COPY . .

RUN npm i -g @dataform/cli
RUN npm ci --prod

ENTRYPOINT ["dataform", "run"]