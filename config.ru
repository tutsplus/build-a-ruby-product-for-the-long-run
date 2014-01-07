$:.unshift File.expand_path '../app', __FILE__

require "bundler"
Bundler.require
require "app"

run App
