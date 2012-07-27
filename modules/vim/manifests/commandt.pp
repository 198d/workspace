class commandt {
  Exec { 
    path => ['/usr/bin', '/bin'],
    user => 'vagrant',
    cwd  => '/home/vagrant/.vim/ruby/command-t'
  }

  exec { 'ruby extconf.rb':
    require => File['/home/vagrant/.vim'],
    creates => '/home/vagrant/.vim/ruby/command-t/Makefile',
  }

  exec { 'make':
    require => Exec['ruby extconf.rb'],
    creates => '/home/vagrant/.vim/ruby/command-t/ext.o'
  }
}
