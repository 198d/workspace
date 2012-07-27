class ack {
  package { 'ack':
    ensure => installed
  }

  file { '/home/vagrant/.ackrc':
    source => 'puppet:///modules/ack/ackrc'
  }
}
