Pod::Spec.new do |s|
  s.name             = 'APIVerveDogBreeds'
  s.version          = '1.2.3'
  s.summary          = 'Dog Breeds searches canine breed records by name to return official breed names and kennel club group classifications.'
  s.description      = <<-'DESC'
Dog Breeds searches canine breed records by name to return official breed names and kennel club group classifications. Paid plans add height, weight, lifespan, traits, and original breeding purposes.

This iOS/macOS SDK provides a convenient way to access the Dog Breeds from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/dogbreeds?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/dogbreeds-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveDogBreeds/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
