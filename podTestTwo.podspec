#
# Be sure to run `pod lib lint podTestOne.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'podTestTwo'
  s.version          = '0.0.1'
  s.summary          = 'An iOS advertising aggregation SDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An iOS advertising aggregation SDK
                       DESC

  s.homepage         = 'https://github.com/gjjggg/podTestTwo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gjjggg' => '1271719322@qq.com' }
  s.source           = { :git => 'https://github.com/gjjggg/podTestTwo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.requires_arc    = true

  s.source_files = 'podTestTwo/Classes/**/*.{h,m}'
  s.vendored_frameworks = 'SDK/jihuoniao_aggregation_ads.framework'
#  s.resources = ['SDK/jihuoniao_target_ads.bundle']
#  s.resource_bundles = {
#    'jihuoniao_target_ads' => ['SDK/jihuoniao_target_ads.bundle/**/*']
#  }
   s.resources  = ['SDK/**/*.bundle']
    
   s.pod_target_xcconfig = {
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64'
}
   s.user_target_xcconfig = {
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64'
  }
  
#   s.resource_bundles = {
#    'podTestOne' => ['podTestOne/Assets/*.png']
#  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = [
  'Accelerate','AddressBook','AdSupport','AppTrackingTransparency','AudioToolbox',
  'AVFoundation','AVKit','CoreData','CFNetwork','CoreFoundation','CoreGraphics',
  'CoreMotion','CoreML','CoreHaptics','CoreTelephony','CoreText','CoreLocation',
  'DeviceCheck','Foundation','ImageIO','JavaScriptCore','MediaPlayer','MessageUI',
  'MobileCoreServices','QuickLook','SafariServices','Security','StoreKit','UIKit',
  'WebKit','SystemConfiguration','QuartzCore','SwiftUI','CoreServices','AssetsLibrary',
  'Photos','CoreMedia','MapKit','CoreImage'
  ]

  s.libraries = 'bz2', 'c++', 'iconv', 'resolv.9', 'sqlite3', 'xml2', 'z', 'c++abi'
  s.dependency 'WechatOpenSDK'
 
  s.dependency 'Ads-CN-Beta'
  s.dependency 'BaiduMobAdSDK'
  s.dependency 'GDTMobSDK'
  s.dependency 'KSAdSDK'
  s.dependency 'BeiZiSDK-iOS/BeiZiSDK-iOS'
  s.dependency 'JADYun'
  s.dependency 'TanxSDK'


 


  s.pod_target_xcconfig = {
  'OTHER_LDFLAGS' => '-ObjC -all_load -l"z" -l"sqlite3" -l"c++" -l"c++abi"'
  }
end
 

