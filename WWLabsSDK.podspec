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

  #s.vendored_frameworks = 'WowWeeMiPSDK.framework', 'WowWeeMiPosaurSDK'
  s.vendored_frameworks = '*.framework'
  s.public_header_files = "*.framework/Headers/*.h"
  s.header_dir = 'WowWeeMiPSDK'

end

# Demo podspec
# Pod::Spec.new do |s|

#   # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

#   s.name         = 'RobotKit'
#   s.version      = '3.1.78'
#   s.summary      = 'Sphero Robot Ball - iOS SDK'
#   s.description  = <<-DESC
#                    iOS SDK of Sphero Robot Ball.
#                    Check http://sdk.sphero.com/
#                    DESC
#   s.homepage     = 'https://github.com/orbotix/Sphero-iOS-SDK'
#   s.license      = 'Commercial or Close source'
#   s.author       = { 'orbotix' => 'dev@orbotix.com' }

#   s.platform     = :ios, '7.0'
#   s.requires_arc = true

#   s.source       = {
#     :git => 'https://github.com/orbotix/Sphero-iOS-SDK.git',
#     :tag => "release/#{s.version.to_s}"
#   }

#   framework_dir = 'frameworks'

#   inner_frameworks = ['RobotCommandKit', 'RobotKitClassic', 'RobotKitLE', 'RobotLanguageKit']
#   inner_frameworks.each do |inner_framework|
#     s.subspec "#{inner_framework}_headers" do |ss|
#       ss.source_files = "#{framework_dir}/RobotKit.framework/Frameworks/#{inner_framework}.framework/Headers/**/*.h"
#       ss.header_dir   = inner_framework
#     end
#   end

#   s.subspec 'Core' do |ss|
#     inner_frameworks.each do |inner_framework|
#       ss.dependency "RobotKit/#{inner_framework}_headers"
#     end
#     ss.vendored_frameworks = "#{framework_dir}/RobotKit.framework"
#     ss.public_header_files = "#{framework_dir}/RobotKit.framework/Headers/**/*.h"
#     # ss.frameworks          = 'ExternalAccessory', 'CoreBluetooth'
#     ss.libraries           = 'c++'
#     ss.header_dir          = 'RobotKit'
#     ss.xcconfig            = {
#       'OTHER_LDFLAGS' => '-ObjC',
#     }
#   end

#   s.subspec 'UI' do |ss|
#     ss.dependency 'RobotKit/Core'
#     ss.vendored_frameworks = "#{framework_dir}/RobotUIKit.framework"
#     ss.public_header_files = "#{framework_dir}/RobotUIKit.framework/Headers/**/*.h"
#     ss.resources           = "#{framework_dir}/RobotUIKit.bundle"
#     ss.frameworks          = 'UIKit'
#     ss.header_dir          = 'RobotUIKit'
#   end

#   s.subspec 'OvalCompiler' do |ss|
#     ss.dependency 'RobotKit/Core'     --> 皆依賴於RobotKit底下的Core,也就是'Core'那個Subspec
#     ss.vendored_frameworks = "#{framework_dir}/OvalCompiler.framework"
#     ss.public_header_files = "#{framework_dir}/OvalCompiler.framework/Headers/**/*.h"
#   end

#   s.default_subspecs = 'Core', 'UI'

# end
