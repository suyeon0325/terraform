#!/bin/bash
yum install -y httpd

cat > /var/www/html/index.html <<EOF
<h1>Hello, World</h1>
<p>Web Server port: ${server_port}</p>
<p>DB address: ${db_address}</p>
<p>DB port: ${db_port}</p>
EOF

systemctl enable --now httpd