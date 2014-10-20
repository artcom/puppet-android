require 'spec_helper'

describe 'android::system_images', :compile do
  let(:title) { 'sys-img-armeabi-v7a-android-14' }

  {
    'sys-img-armeabi-v7a-android-tv-21' => 'system-images/android-21/android-tv/armeabi-v7a',
    'sys-img-x86-android-tv-21' => 'system-images/android-21/android-tv/x86',
    'sys-img-armeabi-v7a-android-21' => 'system-images/android-21/default/armeabi-v7a',
    'sys-img-x86_64-android-21' => 'system-images/android-21/default/x86_64',
    'sys-img-x86-android-21' => 'system-images/android-21/default/x86',
    'sys-img-armeabi-v7a-addon-google_apis-google-21' => 'system-images/android-21/google_apis/armeabi-v7a',
    'sys-img-x86_64-addon-google_apis-google-21' => 'system-images/android-21/google_apis/x86_64',
    'sys-img-x86-addon-google_apis-google-21' => 'system-images/android-21/google_apis/x86',
    'sys-img-armeabi-v7a-android-wear-20' => 'system-images/android-20/android-wear/armeabi-v7a',
    'sys-img-x86-android-wear-20' => 'system-images/android-20/android-wear/x86',
    'sys-img-armeabi-v7a-android-19' => 'system-images/android-19/default/armeabi-v7a',
    'sys-img-x86-android-19' => 'system-images/android-19/default/x86',
    'sys-img-armeabi-v7a-android-18' => 'system-images/android-18/default/armeabi-v7a',
    'sys-img-x86-android-18' => 'system-images/android-18/default/x86',
    'sys-img-armeabi-v7a-android-17' => 'system-images/android-17/default/armeabi-v7a',
    'sys-img-x86-android-17' => 'system-images/android-17/default/x86',
    'sys-img-mips-android-17' => 'system-images/android-17/default/mips',
    'sys-img-armeabi-v7a-android-16' => 'system-images/android-16/default/armeabi-v7a',
    'sys-img-x86-android-16' => 'system-images/android-16/default/x86',
    'sys-img-mips-android-16' => 'system-images/android-16/default/mips',
    'sys-img-armeabi-v7a-android-15' => 'system-images/android-15/default/armeabi-v7a',
    'sys-img-x86-android-15' => 'system-images/android-15/default/x86',
    'sys-img-mips-android-15' => 'system-images/android-15/default/mips',
    'sys-img-armeabi-v7a-android-14' => 'system-images/android-14/default/armeabi-v7a',
    'sys-img-x86-android-10' => 'system-images/android-10/default/x86',
  }.each do |title, creates|
    context title, :compile do
      let(:title) { title }
      it { should contain_android__package(title)
        .with_type('system-images')
        .with_creates(creates)
      }
    end
  end
   
end
