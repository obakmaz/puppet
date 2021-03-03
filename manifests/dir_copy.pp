 File {
    owner => "vagrant",
    group => "vagrant",
    mode => "0744",
}
  file { 'etc foo confs':
    ensure => 'directory',
    path => '/etc/authors_config',
    source => '/etc/puppetlabs/code/environments/production/files/authors_config',
    recurse => true,
}
