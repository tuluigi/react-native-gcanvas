require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
Pod::Spec.new do |s|
  s.name         = "RCTGCanvas"
  s.version      = "1.0.0"
  s.summary      = package['description']
  s.description  = <<-DESC
                  RCTGCanvas
                   DESC
  s.homepage     = "https://github.com/author/RNToast.git"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNToast.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "GCanvas"
  #s.dependency "others"

end
