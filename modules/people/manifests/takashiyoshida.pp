class people::takashiyoshida {
  # Firewall configuration
  class { "osx::firewall": ensure => 'present' }
  class { "osx::firewall::stealth_mode": ensure => 'present' }

  # Dock settings
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

  # Miscellaneous
  class { "osx::system::crash_reporter": ensure => 'present' }
  class { "osx::dialogs::auto_expanding_save_dialog": ensure => 'present' }

  class { "osx::keyboard::default_to_alternate_function_keys": ensure => 'present' }
  class { "osx::network::dsstores": ensure => 'present' }

  class { "osx::universal_access::assistive_device_access": ensure => 'present' }
  class { "osx::windows::miniaturize_on_double_click": ensure => 'present' }

  include bbedit
  include dropbox
  include fastscripts
  include chrome
  include launchbar
  include spamsieve
  include transmission
}
