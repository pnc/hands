# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hands/version'

Gem::Specification.new do |spec|
  spec.name          = "hands"
  spec.version       = Hands::VERSION
  spec.authors       = ["Phil Calvin"]
  spec.email         = ["phil@philcalvin.com"]
  spec.description   = %q{Run commands on groups of EC2 servers}
  spec.summary       = %q{Remote hands for EC2. Run arbitary shell commands across your EC2 infrastructure
                          filtering by instance names, auto-scaling group membership, or other properties.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rye"
  spec.add_dependency "aws-sdk"
  spec.add_dependency "trollop"
end
