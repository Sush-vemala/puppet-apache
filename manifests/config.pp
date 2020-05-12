# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1::config
class apache1::config {
  file { 'apache1-config':
    ensure => $apache1::config_ensure,
    path   => $apache1::config_path,
    source => "puppet:///modules/apache1/${osfamily}.conf",
    mode   => '0644',
    owner  => 'root',
    group  => 'root',
  }
}
