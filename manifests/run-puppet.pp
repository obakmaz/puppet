# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}

cron { 'del-tmp':
  command => 'sudo find /tmp/* -maxdepth 1 -type d -exec rm -rf {} \; 2>/dev/null',
  hour    => '15',
  minute  => '15',
}
