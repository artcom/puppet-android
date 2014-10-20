# == Class: android::system_images
#
# Installs the Android SDK system-images.
#
# === Authors
#
# Philip Schiffer <philip.schiffer@gmail.com>
#
# === Copyright
#
# Copyright 2013 Philip Schiffer
#
define android::system_images() {

  $title_parts = split($title, '-')

  android::package{ $title:
    type => 'system-images',
    creates => "system-images/android-${title_parts[1]}"
  }

}
