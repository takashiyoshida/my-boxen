class people::takashiyoshida::osx_settings {
  # Dock settings
  class { 'osx::dock::position': position => 'left' }
  include osx::dock::magnification

  # Finder settings
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop

  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection
  include osx::finder::show_warning_before_emptying_trash
  include osx::finder::show_warning_before_changing_an_extension

  # Miscellaneous
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  include osx::global::enable_standard_function_keys
  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control
}
