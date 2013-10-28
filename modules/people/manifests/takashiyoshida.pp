class people::takashiyoshida {
  include people::takashiyoshida::osx_settings

  # Applications
  include bbedit
  include dropbox
  include fastscripts
  include chrome
  include launchbar
  include spamsieve
  include transmission
  include transmit
  include undercover
  include vlc

  # Homebrew
  homebrew::tap { "homebrew/binary": }

  package {
    "emacs": ;
    "ffmpeg": ;
    "mercurial": ;
    "p7zip": ;
    "the_silver_searcher": ;
    "spark": ;
    "tig": ;
    "tmux": ;
    "unrar": ;
    "vim": ;
    "youtube-dl": ;
    "zsh":
      install_options => [ "--disable-etcdir" ]
  }

  file_line { 'Add zsh to /etc/shells':
    path => '/etc/shells',
    line => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  osx_chsh { $::luser:
    shell => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  include people::takashiyoshida::repositories
}
