class git {
  package { 'git':
    ensure => installed
  }

  file { '/home/vagrant/.gitignore':
    source => 'puppet:///modules/git/gitignore'
  }
}
