FROM directus/directus:10.6.3

USER root
RUN corepack enable
USER node

RUN pnpm install directus-extension-schema-sync \
  directus-extension-sql-query-panel