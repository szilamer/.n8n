FROM n8nio/n8n:latest

# Perzisztens adattárolás beállítása
VOLUME [ "/root/.n8n" ]

# Alapértelmezett port beállítása
EXPOSE 5678

# Alkalmazás indítása
CMD ["n8n", "start"] 