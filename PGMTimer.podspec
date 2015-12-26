Pod::Spec.new do |s|
  s.name             = "PGMTimer"
  s.version          = "0.1.0"
  s.summary          = "Swift Timer: start, stop, pause, resume." 
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
