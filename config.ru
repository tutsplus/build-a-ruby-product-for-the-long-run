$:.unshift File.expand_path '../app', __FILE__

require "init"
require "app"

run App
