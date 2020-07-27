# Manage the state of nginx daemon
#
# A description of what this class does
#
# @example
#   include nginx::service
class nginx::service (
  $service_name = $nginx::params::service_name
) inherits nginx::params {
  service { 'nginx_service':
    name       => $service_name,
    ensure     => $nginx::service_ensure,
    enable     => $ngnix::service_enable,
    hasrestart => $ngnix::sevice_hasrestart,
  }
}
