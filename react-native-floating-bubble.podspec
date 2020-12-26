require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = package['name']
  s.version         = package['version']
  s.summary         = package['description']
  s.license         = package['license']
  s.homepage        = "https://github.com/dbContext/react-native-floating-bubble"
  s.authors         = package['author']
  s.source          = { :git => "https://github.com/dbContext/react-native-floating-bubble", :tag => "v#{s.version}" }
  s.source_files    = "ios/*.{h,m}"
  s.platform        = :ios, "9.0"
  s.dependency        'React-Core'
end
