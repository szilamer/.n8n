FROM n8nio/n8n:latest

# Környezeti változók beállítása
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV NODE_ENV=production

# Jogosultságok beállítása
USER root
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n && \
    chmod 700 /home/node/.n8n

# Perzisztens adattárolás beállítása
VOLUME [ "/home/node/.n8n" ]

# Alapértelmezett port beállítása
EXPOSE 5678

# Váltás a node felhasználóra
USER node
WORKDIR /home/node

# Alkalmazás indítása
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["n8n", "start"] 