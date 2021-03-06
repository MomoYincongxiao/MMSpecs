#
# Be sure to run `pod lib lint MDRecordAndEdit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MMMedia'
  s.version          = '1.0.1'
  s.summary          = 'MMMedia'

  s.description      = <<-DESC
  MMMedia media layer
                       DESC

  s.homepage         = 'https://www.baidu.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bi.s_fish' => 'sunfeifish@gmail.com' }
  s.source           = { :git => 'https://github.com/cosmos33/MMMedia.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.frameworks = 'AVFoundation', 'CoreVideo', 'CoreMedia', 'CoreAudio', 'Accelerate', 'CoreGraphics'
  s.weak_frameworks = 'Metal', 'MetalKit'
  s.libraries = 'z', 'c++', 'resolv', 'iconv'

  s.vendored_frameworks = 'Frameworks/**/*.framework'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => '$(inherited) NO', 'OTHER_LDFLAGS' => '$(inherited) -ObjC', 'MTL_LANGUAGE_REVISION' => 'Metal12'}

  s.resources = 'Resources/*'

  s.dependency 'GPUImage'
  s.dependency 'MetalPetal', '1.1.2'
  s.dependency 'KVOController'
  s.dependency 'MMCV'
  s.dependency 'MMXEScene'
  s.dependency 'Mantle'

end
