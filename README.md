# Jellyfin-media-stack

Create your hown media server with Docker

<div style="text-align: center">
    <img src="https://jellyfin.org/images/logo.svg" width="300" height="100">
</div> 


<div style="text-align: center"> 
    <img src="https://raw.githubusercontent.com/Fallenbagel/jellyseerr/develop/public/logo_full.svg" width="300" height="100"> 
</div>


<div style="text-align: center">
    <img src="https://raw.githubusercontent.com/linuxserver/docker-templates/master/linuxserver.io/img/sonarr-banner.png" width="300" height="100">
</div>


<div style="text-align: center">
    <img src="https://warlord0blog.files.wordpress.com/2022/01/radarr_logo-1.png" width="300" height="100">
</div>


<div style="text-align: center">
    <img src="https://avatars.githubusercontent.com/u/15383019?s=280&v=4" width="100" height="100">
</div>


<div style="text-align: center">
    <img src="https://avatars.githubusercontent.com/u/75936191?v=4" width="200" height="200">
</div>


<div style="text-align: center">
    <img src="https://prowlarr.com/logo/128.png" width="100" height="100">
</div>


<div style="text-align: center">
    <img src="https://media.imgcdn.org/repo/2023/11/deluge-bittorrent-client/65672ad6956a6-deluge-bittorrent-client-Icon.webp" width="100" height="100">
</div>

---

# Prerequisites 

## Docker

To install Docker on your system, you can use the following script:
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```

### Using Docker Compose

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
