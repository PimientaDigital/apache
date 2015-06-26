# == Class apache::exec
#
# This class is meant to be called from module.
# It ensure the file is running.
#
class apache::exec {

    exec
    {
        "a2ensite localhost":
            command => "a2ensite local.vhost.conf",
    }

    exec
    {
        "a2enmod rewrite":
            command => "a2enmod rewrite",
            require => Exec["a2ensite localhost"],
    }

}
