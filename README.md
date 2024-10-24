# Jellyfin-media-stack

Create your hown media server with Docker

## Docker

Install Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

OR

apt install docker.io
apt install docker-compose
```

### Install with docker compose

```bash
docker-compose up -d
```
To shut down the stack :

```bash
docker-compose down
```

# .env
```bash
OPENVPN_USER
OPENVPN_PASSWORD
COMMON_PATH
TZ
LOG_LEVEL
CAPTCHA_SOLVER
```

# Accessing Applications

Once the applications are deployed, you can access them using the following addresses :

* Jellyfin : http://localhost:8096
* Sonarr : http://localhost:8989
* Radarr : http://localhost:7878
* Jackett : http://localhost:9117
* Prowlarr : http://localhost:9696
* qBittorrent : http://localhost:8080


# Files
```bash
.
├── common
│   ├── configs
│   │   ├── deluge
│   │   ├── jackett
│   │   ├── jellyfin
│   │   ├── jellyseerr
│   │   ├── prowlarr
│   │   ├── radarr
│   │   └── sonarr
│   ├── deluge
│   │   └── downloads
│   ├── jackett
│   │   └── configs
│   ├── jellyfin
│   │   ├── cache
│   │   └── configs
│   ├── jellyseerr
│   │   └── configs
│   ├── prowlarr
│   │   └── configs
│   ├── radarr
│   │   ├── configs
│   │   └── movies
│   └── sonarr
│       ├── configs
│       └── tv
├── docker-compose.yml
├── Dockerfile
└── vpn
    └── vpn-config
        ├── config.ovpn
        └── credentials.txt
```
