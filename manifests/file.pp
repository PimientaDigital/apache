# == Class apache::file
#
# This class is meant to be called from module.
# It ensure the file is running.
#
class apache::file {

  file { $::apache::file_name:
    ensure  => present,
    owner => root, group => root,
    source  => "/var/www/resources/apache/vhost",
  }

}
