 File {
    owner => "vagrant",
    group => "vagrant",
    mode => "0744",
}
  file { 'etc foo confs':
    ensure => 'directory',
    path => '/etc/foo',
    source => 'puppet:///',
    recurse => true,
}
