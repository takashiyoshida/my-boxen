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
  $solarized = "${projects}/solarized"
  $term_solarized = "${projects}/osx-terminal.app-colors-solarized"
  $ql_markdown = "${projects}/qlmarkdown"
  $prelude = "${projects}/prelude"

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

  repository { $solarized:
    source => 'altercation/solarized',
    require => File[$projects],
  }

  repository { $term_solarized:
    source => 'tomislav/osx-terminal.app-colors-solarized',
    require => File[$projects],
  }

  repository { $ql_markdown:
    source => 'toland/qlmarkdown',
    require => File[$projects],
  }

  repository { $prelude:
    source => 'bbatsov/prelude',
    require => File[$projects],
  }
}
