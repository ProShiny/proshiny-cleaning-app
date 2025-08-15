# ProShiny Portable Backend — 2025-08-15

Portable Node/Express/Prisma backend for Pro-Shiny Cleaning Services.

## Local (Docker)
```bash
cp .env.example .env
docker compose up -d
```

## Dev
```bash
npm i
npx prisma generate
cp .env.example .env
npx prisma migrate deploy
npx tsx prisma/seed.ts
npx tsx src/index.ts
```

Health: GET http://localhost:8787/health
