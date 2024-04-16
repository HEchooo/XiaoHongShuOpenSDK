Pod::Spec.new do |s|
  s.name             = 'XiaoHongShuOpenSDK'
  s.version          = '1.2.18'
  s.summary          = '小红书 SDK'

  s.homepage         = 'https://github.com/wenbingzuo/XiaoHongShuOpenSDK'
  s.author           = { 'wenbingzuo' => 'jaly201319@hotmail.com' }
  s.source           = { git: 'https://github.com/wenbingzuo/XiaoHongShuOpenSDK.git', tag: s.version.to_s }
  s.license          = 'MIT'

  s.platform = :ios, '10.0'

  s.vendored_frameworks = 'libs/*.xcframework'
  s.frameworks = 'AVFoundation', 'CoreMedia', 'Photos'
  s.libraries = 'z', 'sqlite3'
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
