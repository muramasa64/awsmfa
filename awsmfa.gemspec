# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'awsmfa/version'

Gem::Specification.new do |spec|
  spec.name          = "awsmfa"
  spec.version       = Awsmfa::VERSION
  spec.authors       = ["ISOBE Kazuhiko"]
  spec.email         = ["muramasa64@gmail.com"]

  spec.summary       = %q{Manage AWS account MAF}
  spec.description   = %q{Manage AWS account Virtual MFA Device}
  spec.homepage      = "https://github.com/muramasa64/awsmfa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"

  spec.add_dependency "aws-sdk", "~> 2.1"
  spec.add_dependency "thor"
  spec.add_dependency "rotp"
end
