# n8n Render.com Deployment

Ez a repository tartalmazza az n8n workflow automation platform Render.com-os deploymentjéhez szükséges konfigurációs fájlokat.

## Telepítési lépések

1. Fork-old ezt a repository-t
2. Menj a Render.com-ra és hozz létre egy új Web Service-t
3. Válaszd ki a forkolt repository-t
4. A deployment típusnál válaszd a "Docker"-t
5. Add meg a következő környezeti változókat a Render.com felületén:
   - N8N_BASIC_AUTH_USER
   - N8N_BASIC_AUTH_PASSWORD
   - További szükséges API kulcsok és titkok

## Fontos tudnivalók

- Az alkalmazás a `/root/.n8n` mappában tárolja az adatokat
- Az alapértelmezett port: 5678
- Basic authentication alapértelmezetten be van kapcsolva
- A perzisztens tárolás be van állítva

## Helyi fejlesztés

Lokális futtatáshoz:

```bash
docker build -t n8n .
docker run -p 5678:5678 n8n
```

## Támogatás

Ha kérdésed vagy problémád van, nyiss egy issue-t a repository-ban. 