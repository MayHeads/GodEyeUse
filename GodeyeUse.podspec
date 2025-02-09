#
# Be sure to run `pod lib lint GodeyeUse.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GodeyeUse'
  s.version          = '2.0.3'
  s.swift_versions = ["5.9"]
  s.summary          = 'Automaticly display Log,Crash,Network,ANR,Leak,CPU,RAM,FPS,NetFlow,Folder and etc with one line of code based on Swift. Just like God opened his eyes.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    Automaticly display Log,Crash,Network,ANR,Leak,CPU,RAM,FPS,NetFlow,Folder and etc with one line of code based on Swift. Just like God opened his eyes..
    DESC

    s.homepage         = 'https://github.com/zixun/GodeyeUse'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zixun' => 'chenyl.exe@gmail.com' }
    s.source           = { :git => 'https://github.com/zixun/GodeyeUse.git', :tag => s.version.to_s }

    s.ios.deployment_target = '12.0'


  s.source_files = 'GodeyeUse/Classes/**/*'
  
  s.resource_bundles = {
      'GodEyeUse' => ['GodeyeUse/Assets/*.{png,bundle}']
  }
  
  s.subspec 'ANREye' do |subspec|
      subspec.source_files = 'Core/ANREye/Classes/**/*'
  end
  
  s.subspec 'AppBaseKit' do |subspec|
      subspec.source_files = 'Core/AppBaseKit/Classes/**/*'
  end
  
  s.subspec 'ASLEye' do |subspec|
      subspec.source_files = 'Core/ASLEye/Classes/**/*'
  end
  
  s.subspec 'CrashEye' do |subspec|
      subspec.source_files = 'Core/CrashEye/Classes/**/*'
  end
  
  s.subspec 'LeakEye' do |subspec|
      subspec.source_files = 'Core/LeakEye/Classes/**/*'
  end
  
  s.subspec 'Log4G' do |subspec|
      subspec.source_files = 'Core/Log4G/Classes/**/*'
  end
  
  s.subspec 'NetworkEye' do |subspec|
      subspec.source_files = 'Core/NetworkEye/Classes/**/*'
  end
  
  s.subspec 'SystemEye' do |subspec|
      subspec.source_files = 'Core/SystemEye/Classes/**/*'
  end
  
  s.subspec 'UIThreadEye' do |subspec|
      subspec.source_files = 'Core/UIThreadEye/Classes/**/*'
  end
  

  
  s.dependency 'SQLite.swift'
  s.dependency 'MJRefresh'
end
