File {
  owner  => 'vagrant',
  ensure => 'present'
}

include home
include vim
include tmux
include ack
include git
