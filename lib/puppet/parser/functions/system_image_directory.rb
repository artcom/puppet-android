module Puppet::Parser::Functions
  newfunction(:system_image_directory, :type => :rvalue, :doc => <<-EOS
    performs complicated regexpes on the system image name to infer the
    installation directory.
    EOS
  ) do |arguments|
    sys_img = arguments.first
    m = /sys-img-(?<arch>x86|armeabi-\w+|mips|x86_64)-(?<name>.+)-(?<ver>\d+)$/.match(sys_img)
   
    case m[:name]
    when 'android'
      return "system-images/android-#{m[:ver]}/default/#{m[:arch]}"
    when 'android-wear', 'android-tv'
      return "system-images/android-#{m[:ver]}/#{m[:name]}/#{m[:arch]}"
    when 'addon-google_apis-google'
      return "system-images/android-#{m[:ver]}/google_apis/#{m[:arch]}"
    end
    return "system-images/android-99/default/armeabi-v7a"
  end
end

# vim: set ts=2 sw=2 et :
