
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "redfish_tools/version"

Gem::Specification.new do |spec|
  spec.name          = "redfish_tools"
  spec.version       = RedfishTools::VERSION
  spec.authors       = ["Tadej Borovšak"]
  spec.email         = ["tadej.borovsak@xlab.si"]

  spec.summary       = %q{Collection of tools for developers, working with Redfish services.}
  spec.homepage      = "https://github.com/xlab-si/redfish_tools"
  spec.license       = "Apache-2.0"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "redfish_client", "~> 0.2"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop"
end