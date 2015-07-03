class people::takashiyoshida::osx_settings {
  # Firewall configuration
  #class { "osx::firewall": ensure => 'present' }
  #class { "osx::firewall::stealth_mode": ensure => 'present' }

  # Dock settings
  #class { "osx::dock::orientation": orientation => 'left' }
  #class { "osx::dock::magnification": ensure => 'present' }
  class { 'osx::dock::position': position => 'left' }
  include osx::dock::magnification

  # Finder settings
  #class { "osx::finder::status_bar": ensure => 'present' }
  #class { "osx::finder::quicklook_text_selection": ensure => 'present' }

  #class { "osx::finder::file_extensions":
  #  display_all => false,
  #  warn_on_change => true,
  #}

  #class { "osx::finder::default_location": location => 'home directory' }

  # Miscellaneous
  #class { "osx::system::crash_reporter": ensure => 'present' }
  #class { "osx::dialogs::auto_expanding_save_dialog": ensure => 'present' }

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop

  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_warning_before_emptying_trash
  include osx::finder::show_warning_before_changing_an_extension

  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  #class { "osx::keyboard::default_to_alternate_function_keys": ensure => 'present' }
  include osx::global::enable_standard_function_keys
  #class { "osx::network::dsstores": ensure => 'present' }
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  #class { "osx::universal_access::assistive_device_access": ensure => 'present' }
  #class { "osx::windows::miniaturize_on_double_click": ensure => 'present' }
}
