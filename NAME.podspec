#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
   # s.swift_versions = '5.0'
  # s.public_header_files = 'HWZSDK/**/{AppDelegate}.h'
  # s.vendored_frameworks = 'HWZSDK/**/*.framework' 
  # s.vendored_libraries = 'HWZSDK/**/*.a'
  s.source_files = '${POD_NAME}/Classes/**/*.{swift,pch,h,m,mm}'
  s.resource_bundles = {
    '${POD_NAME}' => ['${POD_NAME}/Assets/**/*', '${POD_NAME}/Classes/**/*.{xib,storyboard,xcassets,png,jpg,jpeg,gif,txt,json,xml,mp4,avi,wmv,mkv,mp3,m4a,aac,wma}']
  }
  s.static_framework = true  #依赖库是静态库也会导致必须此库是静态库
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'WZ_mediator'

  # s.xcconfig = {
    # 'ENABLE_BITCODE' => 'NO' ,
    # 'SWIFT_OBJC_BRIDGING_HEADER' => '$(PODS_ROOT)/HWZSDK/Good_IdentifyAuthentication-Bridging-Header.h' //not work anymore
    # 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
    # 'HEADER_SEARCH_PATHS' => '$(SDKROOT)' ,# for HWZSDK/Modules/module.modulemap
    # 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/HWZSDK'
    # 'VALID_ARCHS' => 'arm64,x86_64'
#  }
end
