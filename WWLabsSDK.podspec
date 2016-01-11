Pod::Spec.new do |s|
  
  s.name             = "WWLabsSDK"
  s.version          = "1.0.0"
  s.summary          = "SDK for Miposaur & Mip Robot"
  s.description      = "SDK for Miposaur & Mip Robot v1.0.0"
  s.homepage         = "https://github.com/citysite102/WWLabsSDK"
  s.license          = 'MIT'
  s.author           = { "samuel" => "samuel@wantoto.com" }
  s.source           = { 
  		:git => "https://github.com/citysite102/WWLabsSDK.git", 
  		:tag => "v#{s.version}" }

  s.social_media_url = 'https://twitter.com/citysite102'
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  # s.public_header_files = 'Framework/MyoKit.framework/**/*.h'
  # s.preserve_paths = 'Framework/MyoKit.framework/**/*'

  s.vendored_frameworks = 'WowWeeMiPSDK.framework', 'WowWeeMiPosaurSDK'
  s.public_header_files = "WowWeeMiPSDK.framework/Headers/*.h", "WowWeeMiPosaurSDK.framework/Headers/*.h"
  s.header_dir = 'WowWeeMiPSDK'

end