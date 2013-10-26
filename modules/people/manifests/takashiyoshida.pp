class people::takashiyoshida {
  # Firewall configuration
  class { "osx::firewall": ensure => 'present' }
  #class { "osx::firewall::stealth_mode": enabled => true }
}
