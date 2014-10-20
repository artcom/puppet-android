require 'spec_helper'

describe 'android::addon', :compile do

  let(:title) { 'android-15' }
  it { should contain_android__package(title)
       .with_type('addon') 
       .with_creates('add-ons/android-15') 
  }

end
