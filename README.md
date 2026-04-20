# PNPM Docker Image
[![Build Multiplatform Images](https://github.com/mpash/pnpm-docker/actions/workflows/image.yml/badge.svg?branch=main)](https://github.com/mpash/pnpm-docker/actions/workflows/image.yml)

A minimal Alpine Linux base image with [pnpm](https://pnpm.io/) pre-installed via [corepack](https://nodejs.org/api/corepack.html).

## Available Tags

| Tag | Node.js Base |
| - | - |
| `latest` | `node:alpine` (floating) |
| `node24` | `node:24-alpine` (Active LTS) |
| `node22` | `node:22-alpine` (Maintenance LTS) |

## Usage

```dockerfile
FROM mitchpash/pnpm:latest
# or pin to a specific Node.js version
FROM mitchpash/pnpm:node24
```

## Build Arguments

Both arguments can be overridden at build time via `--build-arg`.

| Argument | Default | Description |
| - | - | - |
| `NODE_VERSION` | `lts-alpine` | Node.js image tag to base from |
| `PNPM_VERSION` | `10.33.0` | pnpm version to activate via corepack |

## Supported Targets

<!-- TARGETS-START -->
| Target | Supported |
| - | - |
| linux/amd64 | ✅ |
| linux/arm/v6 | ✅ |
| linux/arm/v7 | ✅ |
| linux/arm64/v8 | ✅ |
| linux/ppc64le | ✅ |
| linux/s390x | ✅ |
<!-- TARGETS-END -->

> This table is regenerated automatically after each successful build.

## Roadmap

- [ ] Publish to GitHub Container Registry (`ghcr.io`) as a secondary registry
- [ ] Add image vulnerability scanning (e.g., [Trivy](https://github.com/aquasecurity/trivy)) as a CI gate
- [ ] Add SBOM attestation and provenance signing via `--attest`
- [ ] Automate pnpm and Node.js version bumps via [Renovate](https://docs.renovatebot.com/) or Dependabot
- [ ] Add a `node:current-alpine` image track for pre-LTS testing
