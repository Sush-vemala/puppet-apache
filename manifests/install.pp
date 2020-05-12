# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1::install
class apache1::install {
  package { "${apache1::install_name}":
    ensure => "${apache1::install_ensure}",
  }
}
