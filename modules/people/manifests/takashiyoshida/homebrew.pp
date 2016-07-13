class people::takashiyoshida::homebrew {
  package {
    "emacs": ;
    "ffmpeg": ;
    "mercurial": ;
    "packer": ;
    "pandoc": ;
    "pyenv": ;
    "p7zip": ;
    "reattach-to-user-namespace": ;
    "the_silver_searcher": ;
    "streamripper": ;
    "svn": ;
    "tig": ;
    "tmux": ;
    "tree": ;
    "unrar": ;
    "vim": ;
    "wget": ;
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
}
