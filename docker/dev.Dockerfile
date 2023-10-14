FROM oven/bun:latest

WORKDIR /app/next-app

COPY package.json ./
COPY bun.lockb ./

COPY . .

RUN bun install

# Next.js collects completely anonymous telemetry data about general usage. Learn more here: https://nextjs.org/telemetry
# Uncomment the following line to disable telemetry at run time
ENV NEXT_TELEMETRY_DISABLED 1

# Start Next.js in development mode based on the preferred package manager
CMD bun run dev

# Note: Don't expose ports here, Compose will handle that for us