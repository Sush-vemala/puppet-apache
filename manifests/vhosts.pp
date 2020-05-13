# @summary A short summary of the purpose of this defined type.
#Generates VHOSTS files
# A description of what this defined type does
#
# @example
#   apache1::vhosts { 'namevar': }
define apache1::vhosts (
  Integer $port,
  String[1] $subdomain,
  String    $admin,
  String[1] $docroot, 
) {
  file { "${docroot}":
    ensure => 'directory',
    owner  => $apache1::vhosts_owner,
    group  => $apache1::vhosts_group,
  }
  
  file { "${apache1::vhosts_dir}/${subdomain}.conf":
    ensure => 'file',
    owner  => $apache1::vhosts_owner,
    group  => $apache1::vhosts_group,
    mode   => '0644',
    content => epp('apache1/vhosts.conf.epp', {'port' => $port , 'subdomain' => $subdomain,'admin' => $admin, 'docroot' => $docroot } ),
    notify => Service["${apache1::service_name}"],
  }

}
