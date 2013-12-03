# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dainty/version'

Gem::Specification.new do |spec|
  spec.name          = "dainty"
  spec.version       = Dainty::VERSION
  spec.authors       = ["José Mota"]
  spec.email         = ["jose@josemota.net"]
  spec.summary       = %q{Manage your bookmarks. Courtesy of Jose Mota and Tuts+.}
  spec.description   = %q{Dainty is a bookmark manager application for the
purpose of educating the Tuts+ Premium audience on the "Build a Ruby Product
for the Long Run" course. Feel free to take a peek!}
  spec.homepage      = "http://github.com/tutsplus/dainty"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency     "thor"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
