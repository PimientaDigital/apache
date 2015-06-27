# == Class apache::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'apache2'
      $service_name = 'apache2'
      $file_name = '/etc/apache2/sites-available/local.vhost.conf'
      $bin_ensite = '/etc/apache2/sites-available/local.vhost.conf'
    }
    'RedHat', 'Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
      $file_name = '/etc/apache2/sites-available/local.vhost.conf'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
