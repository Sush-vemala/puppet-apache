# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1::install
class apache1::install (
  $install_name   = $apache1::params::install_name,
  $install_ensure = $apache1::params::install_ensure,
) inherits apache1::params {
  package { "${install_name}":
    ensure => "${install_ensure}",
  }
}
