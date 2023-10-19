# increasing limit in OS configuration files to enable user "holberton" login and open file without error 

exec {'increase-soft-limit':
    command  => "sed -i '/holberton/s/4/4096/' /etc/security/limits.conf",
    provider => 'shell',
}

exec {'increase-hard-limit':
    command  => "sed -i '/holberton/s/5/4096/' /etc/security/limits.conf",
    provider => 'shell',
}
