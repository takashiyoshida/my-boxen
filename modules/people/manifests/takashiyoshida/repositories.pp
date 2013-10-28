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
}
