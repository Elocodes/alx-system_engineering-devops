# Increasing file descriptor limit to handle more traffic to server

exec {'increase-limit':
    command  => 'sed -i "s/15/4096/" /etc/default/nginx && service nginx restart',
    provider => 'shell'
}
