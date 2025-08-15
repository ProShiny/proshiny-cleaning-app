FROM node:20-alpine
WORKDIR /app
COPY package.json package-lock.json* pnpm-lock.yaml* yarn.lock* ./
RUN npm i --legacy-peer-deps || true
COPY . .
RUN npx prisma generate || true
EXPOSE 8787
CMD ["npx","tsx","src/index.ts"]
