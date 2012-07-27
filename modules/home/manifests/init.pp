class home {
  file { '/home/vagrant/.bashrc':
    source => 'puppet:///modules/home/bashrc'
  }
}
