class people::takashiyoshida::repositories {
  $home = "/Users/${::luser}"
  $projects = "${home}/Projects"

  file { $projects:
    ensure => 'directory',
    mode => 700,
  }

  exec { "chmod +a 'everyone deny delete' ${projects}":
    cwd => $home,
    require => File[$projects],
  }

  $applescript = "${projects}/applescript"
  $dotfiles = "${projects}/dotfiles"
  $oh_my_zsh = "${projects}/oh-my-zsh"

  repository { $applescript:
    source => 'takashiyoshida/applescript',
    require => File[$projects],
  }

  repository { $dotfiles:
    source => 'takashiyoshida/dotfiles',
    require => File[$projects],
  }

  repository { $oh_my_zsh:
    source => 'takashiyoshida/oh-my-zsh',
    require => File[$projects],
  }
}
