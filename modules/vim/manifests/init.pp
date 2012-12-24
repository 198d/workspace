class vim {
  package { 'gvim':
    ensure => installed
  }

  file { '/home/vagrant/.vimrc':
    source => 'puppet:///modules/vim/vimrc'
  }

  file { '/home/vagrant/.vim':
    require => File['/home/vagrant/.vimrc'],
    ensure  => directory,
    recurse => true,
    source  => 'puppet:///modules/vim/vim'
  }
}
