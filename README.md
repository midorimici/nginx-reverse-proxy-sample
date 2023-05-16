# Nginx reverse proxy rewrite sample

In this sample app, Go API and React app are connected inside a single container with one exposed port accessible from outside.

Notice `EXPOSE 3000 ${API_PORT}` in `Dockerfile` (both are needed) and `location.proxy_pass` in `nginx.conf`.

