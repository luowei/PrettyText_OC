Pod::Spec.new do |s|
  s.name             = "PrettyText_OC"
  s.version          = "1.0"
  s.summary          = "A Objective-C version extension for NSAttributedString!"

  s.description      = <<-DESC
                        An Easier Way To Create NSAttributedString(富文本) in Objective-C!
                       DESC

  s.homepage         = "https://github.com/luowei/PrettyText_OC"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "luowei" => "luowei@wodedata.com" }
  s.source           = { :git => "https://github.com/heartfly/PrettyText.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/luowei010101'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'PrettyText-OC/PrettyText/*'
  s.public_header_files = 'PrettyText-OC/PrettyText/*.h'

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end