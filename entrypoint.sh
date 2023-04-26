#!/bin/sh

IP_ADDRESS=$(hostname -i)

echo "<html>
  <body bgcolor="white">
    <center>
      <h1><font color="black">v4</font></h1>
      <p>IP ADDRESS: $IP_ADDRESS</p>
      <p>HOSTNAME: $HOSTNAME</p>
    </center>
  </body>
</html>" > /usr/share/nginx/html/index.html

exec "$@"