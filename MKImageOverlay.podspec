Pod::Spec.new do |s|

  s.name         = "MKImageOverlay"
  s.version      = "0.0.1"
  s.summary      = "kml groundoverlay lib for mapkit"

  s.description  = <<-DESC
  An image overlay library for rendering kml groundoverlays on mapkit
                   DESC

  s.homepage     = "https://github.com/nickolanack/ios-mapkit-groundoverlay"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "nickolanack" => "nickblackwell82@gmail.com" }

  s.platform     = :ios
 
 
  s.source       = { :git => "https://github.com/nickolanack/ios-mapkit-groundoverlay.git", :tag => 'v0.0.1'}

  s.source_files  = "Classes", "MKImageOverlay/*.{h,m}"


end
