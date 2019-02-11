server {
  server_name my-cool-web-app.example.com;
  listen      80;
  location / {
        proxy_pass http://web-app;
  }
  location /api {
        proxy_pass http://api-app;
  }
}

