Pod::Spec.new do |s|
  s.name         = "ChatSDKKeepLayout"
  s.version      = "1.7.5"
  s.summary      = "Making Auto Layout easier to code."
  s.homepage     = "https://github.com/chat-sdk/KeepLayout"

  s.license      = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author       = 'Tricertops'

  s.source       = { :git => "https://github.com/chat-sdk/KeepLayout.git", :tag => "1.7.5" }

  s.requires_arc = true

  s.module_name = "KeepLayout"
  s.header_dir = "KeepLayout"
  s.default_subspec = 'Swift'
  
  s.swift_version = '4.0'

  s.platform = :ios, '8.0'

  s.subspec 'ObjC' do |op|
    op.source_files = 'Sources'
    op.exclude_files = 'Sources/*.{swift}'
    op.frameworks = 'UIKit'
    op.osx.exclude_files = 'Sources/UIViewController+KeepLayout.{h,m}', 'Sources/UIScrollView+KeepLayout.{h,m}'
  end

  s.subspec 'Swift' do |sp|
    sp.dependency 'ChatSDKKeepLayout/ObjC'
    sp.source_files = 'Sources/*.{swift}'
    sp.frameworks = 'UIKit'
    sp.osx.exclude_files = 'Sources/UIViewController+KeepLayout.{h,m}', 'Sources/UIScrollView+KeepLayout.{h,m}'
  end

end
