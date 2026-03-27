FROM docker.io/oven/bun:latest
WORKDIR /app
COPY package.json ./
RUN bun install
COPY . .
EXPOSE 5173
CMD ["bun", "run", "build"]
