#
# Be sure to run `pod lib lint PGMTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PGMTimer"
  s.version          = "0.1.0"
  s.summary          = "Swift Timer: start, stop, pause, resume."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                       This is a simple class to provide a Swift Timer with the following features: start, stop, pause, resume.
                       DESC

  s.homepage         = "https://github.com/pablogm/PGMTimer"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Pablo GM" => "invanzert@gmail.com" }
  s.source           = { :git => "https://github.com/pablogm/PGMTimer.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PGMTimer' => ['Pod/Assets/*.png']
  }

   s.frameworks = 'Foundation'
end
