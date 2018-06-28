class profiles::ntp::client {
  $ntp = hiera('ntp')

  $restrict_servers = suffix($ntp['servers'], ' nomodify notrap nopeer noquery')
  $restrict_default = [
    'default ignore',
    '-6 default ignore',
    '127.0.0.1',
    '-6 ::1',
  ]

  $restrict = concat($restrict_default, $restrict_servers)

  file { '/etc/dhcp/dhclient.d/ntp.sh':
    ensure    => 'absent',
    subscribe => Class['ntp::install'],
  }

  class{'ntp':
    servers  => $ntp['servers'],
    restrict => $restrict,
  }
}
