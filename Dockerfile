FROM n8nio/n8n:latest

# Környezeti változók beállítása
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Jogosultságok beállítása
USER root
RUN mkdir -p /root/.n8n && \
    chown -R node:node /root/.n8n && \
    chmod 700 /root/.n8n

# Perzisztens adattárolás beállítása
VOLUME [ "/root/.n8n" ]

# Alapértelmezett port beállítása
EXPOSE 5678

# Váltás a node felhasználóra
USER node

# Alkalmazás indítása
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["n8n", "start"] 