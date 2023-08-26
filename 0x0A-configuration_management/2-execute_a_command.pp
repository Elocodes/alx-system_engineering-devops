# manifest kills a process named killmenow

exec {
    'pkil':
    command  => 'pkill -f killmenow',
    provider => 'shell';
}
