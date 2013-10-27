class people::takashiyoshida {
  # Firewall configuration
  class { "osx::firewall": ensure => 'present' }
  class { "osx::firewall::stealth_mode": ensure => 'present' }

  class { "osx::dock::orientation": orientation => 'left' }
  class { "osx::dock::magnification": ensure => 'present' }

  # Finder settings
  class { "osx::finder::status_bar": ensure => 'present' }
  class { "osx::finder::quicklook_text_selection": ensure => 'present' }

  class { "osx::finder::file_extensions":
    display_all => false,
    warn_on_change => true,
  }

  class { "osx::finder::default_location": location => 'home directory' }

  # System
  class { "osx::system::crash_reporter": ensure => 'present' }
  class { "osx::universal_access::assistive_device_access": ensure => 'present' }
  class { "osx::windows::miniaturize_on_double_click": ensure => 'present' }
}
