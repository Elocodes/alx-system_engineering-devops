# puppet fixes apache 500 error found through strace

exec {'fix typo err':
    command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
    path    => '/bin';
}
