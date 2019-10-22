Pod::Spec.new do |s|

  s.name         = "YJMJExtension"
  s.version      = "3.2.2"
  s.summary      = "MJExtension 静态库"
  s.homepage     = "https://github.com/monetking/YJMJExtension"
  s.license      = "MIT"

  s.authors      = { 'monetking' => 'houmanager@qq.com' }

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/monetking/YJMJExtension.git", :tag => s.version }
  s.requires_arc = true

  s.dependency 'MBProgressHUD', '~> 1.0'
  s.source_files = "YJMJExtension_librarys/Headers/*.{h,m}"
  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__

  #import <Foundation/Foundation.h>
  #import <UIKit/UIKit.h>

  #endif
  EOS
  s.vendored_libraries = 'YJMJExtension_librarys/**.a'

end
