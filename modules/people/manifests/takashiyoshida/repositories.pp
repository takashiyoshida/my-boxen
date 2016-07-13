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

  $applescript        = "${projects}/applescript"
  $c755a_loggr        = "${projects}/c755a-loggr"
  $dotfiles           = "${projects}/dotfiles"
  $oh_my_zsh          = "${projects}/oh-my-zsh"
  $solarized          = "${projects}/solarized"
  $term_solarized     = "${projects}/osx-terminal.app-colors-solarized"
  $ql_markdown        = "${projects}/qlmarkdown"
  $prelude            = "${projects}/prelude"
  $vergil             = "${projects}/vergil"

  $osx_vm_templates   = "${projects}/osx-vm-templates"

  repository { $applescript:
    source  => 'takashiyoshida/applescript',
    require => File[$projects],
  }

  repository { $c755a_loggr:
    source  => 'takashiyoshida/c755a-loggr',
    require => File[$projects],
  }

  repository { $dotfiles:
    source  => 'takashiyoshida/dotfiles',
    require => File[$projects],
  }

  repository { $oh_my_zsh:
    source  => 'takashiyoshida/oh-my-zsh',
    require => File[$projects],
  }

  repository { $solarized:
    source  => 'altercation/solarized',
    require => File[$projects],
  }

  repository { $term_solarized:
    source  => 'tomislav/osx-terminal.app-colors-solarized',
    require => File[$projects],
  }

  repository { $ql_markdown:
    source  => 'toland/qlmarkdown',
    require => File[$projects],
  }

  repository { $prelude:
    source  => 'takashiyoshida/prelude',
    require => File[$projects],
  }

  repository { $vergil:
    source  => 'takashiyoshida/vergil',
    require => File[$projects],
  }

  repository { $osx_vm_templates:
    source => 'timsutton/osx-vm-templates',
    require => File[$projects],
  }
}
