
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "relaton_server_csd/version"

Gem::Specification.new do |spec|
  spec.name          = "relaton-server-csd"
  spec.version       = "1.0.0" #Relaton::Server::Csd::VERSION
  spec.authors       = ['Ribose Inc.']
  spec.email         = ['open.source@ribose.com']

  spec.summary       = %q{Web server and utilities to serve up bibliographic descriptions of CalConnect standards}
  spec.description   = %q{Web server and utilities to serve up bibliographic descriptions of CalConnect standards}
  spec.homepage      = "https://github.com/metanorma/relaton-server-csd"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.extra_rdoc_files = %w[README.adoc LICENSE]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.3.0'

, "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 10.0"
  spec.add_development_dependency "rspec-command", "~> 1.0.3"
  spec.add_development_dependency "equivalent-xml", "~> 0.6"
  spec.add_development_dependency 'rspec-core', "~> 3.4"

  spec.add_runtime_dependency 'sinatra'
end
