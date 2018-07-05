
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "naymor/version"

Gem::Specification.new do |spec|
  spec.name          = "naymor"
  spec.version       = Naymor::VERSION
  spec.authors       = ["Dave Kennedy"]
  spec.email         = ["david@bangline.co.uk"]

  spec.summary       = %q{Heroku style random-string-256}
  spec.description   = %q{Generates human readable unique-ish string}
  spec.homepage      = "https://github.com/bangline/naymor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
