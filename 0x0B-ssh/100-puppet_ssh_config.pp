#puppet script makes changes to the client ssh config file

exec {
    'echo "IdentityFile ~/.ssh/school\nPasswordAuthentication no" >> /etc/ssh/ssh_config':
    path => '/bin/'
}
