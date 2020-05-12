# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache1
class apache1 (
  String $install_name,
  String $install_ensure,
  String $config_path,
  String $config_ensure,
) {
  contain apache1::install
  contain apache1::config
 
  Class['apache1::install'] -> Class['apache1::config']
}
