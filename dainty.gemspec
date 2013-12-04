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

  %w(httparty thor rainbow terminal-table).each do |dep|
    spec.add_runtime_dependency dep
  end

  %w(bundler rake minitest).each do |dep|
    spec.add_development_dependency dep
  end
end
