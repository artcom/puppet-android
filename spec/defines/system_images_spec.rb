require 'spec_helper'

describe 'android::system_images', :compile do

  let(:title) { 'sys-img-armeabi-v7a-android-19' }
  it { should contain_android__package(title).with_type('system-images') }

end
