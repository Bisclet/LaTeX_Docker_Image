# LaTeX Development Environment (Dockerized)

This repository provides a Docker-based LaTeX development environment with GUI support (Texstudio) via X11 forwarding. It's designed for users who want a complete, isolated, and portable LaTeX setup without polluting their host system.

---

## 🚀 Features

- Based on **Ubuntu 22.04**
- Includes full **TeX Live** distribution (`texlive-full`)
- Graphical LaTeX editor **Texstudio**
- Lightweight window managers: **Fluxbox** and **Xfce4**
- X11 tools for GUI support
- Locale configured to UTF-8
- User `latexuser` with passwordless `sudo`

---

## 🛠️ Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)
- An X11 server:
  - **Linux**: native X11 support
  - **macOS**: [XQuartz](https://www.xquartz.org/)
  - **Windows**: [VcXsrv](https://sourceforge.net/projects/vcxsrv/) or [Xming](https://sourceforge.net/projects/xming/)

> **Note:** You may need to allow connections using `xhost +local:` on Linux/macOS.

---

## 📁 Directory Structure

```text
.
├── Dockerfile
├── docker-compose.yml
└── README.md
