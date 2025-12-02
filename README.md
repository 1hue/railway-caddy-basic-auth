# Caddy Basic Auth Proxy incl. API service

### Environment variables

| Name                | Description                                        | Example value                                      |
| ------------------- | -------------------------------------------------- | -------------------------------------------------- |
| `PROXY_PASS`        | Proxy URL over internal network (main app service) | `http://${{Frontend.RAILWAY_PRIVATE_DOMAIN}}:8000` |
| `API_PROXY_PASS`    | Proxy URL over internal network (API service)      | `http://${{Api.RAILWAY_PRIVATE_DOMAIN}}:8000`      |
| `API_PUBLIC_DOMAIN` | Public API subdomain                               | `api.${{RAILWAY_PUBLIC_DOMAIN}}`                   |
| `USERNAME`          | Basic auth username                                | `user`                                             |
| `PASSWORD`          | Basic auth password                                | `pass`                                             |
