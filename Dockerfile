FROM directus/directus:10.9.0

USER root
RUN corepack enable
USER node

RUN pnpm install directus-extension-schema-sync \
  directus-extension-sql-query-panel