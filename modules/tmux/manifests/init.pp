class tmux {
  package { 'tmux':
    ensure => installed
  }

  file { '/home/vagrant/.tmux.conf':
    source => 'puppet:///modules/tmux/tmux.conf'
  }
}
