class git {
  package { 'git':
    ensure => installed
  }

  file { '/home/vagrant/.gitignore':
    source => 'puppet:///modules/git/gitignore'
  }

  file { '/home/vagrant/.gitconfig':
    source => 'puppet:///modules/git/gitconfig'
  }
}
