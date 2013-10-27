class people::takashiyoshida {
  # Firewall configuration
  class { "osx::firewall": ensure => 'present' }
  class { "osx::firewall::stealth_mode": ensure => 'present' }

  class { "osx::dock::orientation": orientation => 'left' }
  class { "osx::dock::magnification": ensure => 'present' }

  # Finder settings
  class { "osx::finder::status_bar": ensure => 'present' }
  class { "osx::finder::quicklook_text_selection": ensure => 'present' }

}
