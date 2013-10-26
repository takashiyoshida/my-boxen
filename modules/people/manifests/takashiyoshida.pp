class people::takashiyoshida {
  # Firewall configuration
  # jfelchner/puppet-osx (tag 1.2.3) has a vastly different syntax from master version
  # The future version of jfelchner/puppet-osx will be incompatible with the following

  class { "osx::firewall": enabled => true }
  class { "osx::firewall::stealth_mode": enabled => true }
}
