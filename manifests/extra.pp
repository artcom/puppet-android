# == Define: android::extra
#
# Installs an Android SDK "extra's" package.
#
# === Authors
#
# Etienne Pelletier <epelletier@maestrodev.com>
#
# === Copyright
#
# Copyright 2012 MaestroDev, unless otherwise noted.
#
define android::extra() {

  $title_parts = split($title, '-')
  android::package{ $title:
    type    => 'extra',
    creates => "extras/${title_parts[1]}/${title_parts[2]}"
  }

}
