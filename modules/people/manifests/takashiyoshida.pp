class people::takashiyoshida {
  # Firewall configuration
  class { "osx::firewall": ensure => 'present' }
  class { "osx::firewall::stealth_mode": ensure => 'present' }

  class { "osx::dock::orientation": orientation => 'left' }
  class { "osx::dock::magnification": ensure => 'present' }
}
