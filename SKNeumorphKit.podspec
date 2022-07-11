#
# Be sure to run `pod lib lint SKNeumorphKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SKNeumorphKit'
  s.version          = '1.0.2'
  s.summary          = 'SKNeumorphKit is a swift library to make neumorphic designs.'
  s.description      = <<-DESC
  'SKNeumorphKit is a library to acheive newmorphic design in iOS. Required platform is iOS 13.0 or higher'
                       DESC

  s.homepage         = 'https://github.com/coderode/SKNeumorphKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'coderode' => 'sk9958814616@gmail.com' }
  s.source           = { :git => 'https://github.com/coderode/SKNeumorphKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_version  = '5.1'
  s.source_files = 'SKNeumorphKit/Classes/**/*'
end
