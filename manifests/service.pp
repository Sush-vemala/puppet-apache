# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1::service
class apache1::service {
  service { "${apache1::service_name}":
    ensure     => $apache1::service_ensure,
    enable     => $apache1::service_enable,
    hasrestart => true
  }
}
