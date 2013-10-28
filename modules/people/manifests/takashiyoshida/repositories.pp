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

  $puppet_dropbox = "${projects}/puppet-dropbox"
  $puppet_fastscripts = "${projects}/puppet-fastscripts"
  $puppet_launchbar = "${projects}/puppet-launchbar"
  $puppet_spamsieve = "${projects}/puppet-spamsieve"
  $puppet_transmit = "${projects}/puppet-transmit"
  $puppet_undercover = "${projects}/puppet-undercover"

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

  repository { $puppet_dropbox:
    source => 'takashiyoshida/puppet-dropbox',
    require => File[$projects],
  }

  repository { $puppet_fastscripts:
    source => 'takashiyoshida/puppet-fastscripts',
    require => File[$projects],
  }

  repository { $puppet_launchbar:
    source => 'takashiyoshida/puppet-launchbar',
    require => File[$projects],
  }

  repository { $puppet_spamsieve:
    source => 'takashiyoshida/puppet-spamsieve',
    require => File[$projects],
  }

  repository { $puppet_transmit:
    source => 'takashiyoshida/puppet-transmit',
    require => File[$projects],
  }

  repository { $puppet_undercover:
    source => 'takashiyoshida/puppet-undercover',
    require => File[$projects],
  }
}
