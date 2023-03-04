FROM node:bullseye-slim

WORKDIR /app/

    ENV        OPENAI_API_KEY: "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"
      ENV      PREFIX_ENABLED: "True"

COPY . .

RUN npm install
RUN npm install vite-node
RUN apt-get update
RUN apt-get install chromium -y

CMD ["npm", "run", "start"]
