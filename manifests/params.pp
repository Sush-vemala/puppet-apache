# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1::params
class apache1::params {
  $install_ensure = 'present'
  case $::osfamily {
    'RedHat': {
       $install_name = 'httpd'
    }
    'Debian': {
       $install_name = 'apache2'
    }
  }
}
