require 'bundler/setup'
require 'yaml'
require 'mongoid'

lib_path = File.expand_path '../../lib', __FILE__
$LOAD_PATH.unshift lib_path

ENVIRONMENT = ENV['ENVIRONMENT'] || 'development'
ENV['RABBIT_VHOST'] ||= 'events'

mongo_file = File.expand_path '../mongoid.yml', __FILE__
Mongoid.load!(mongo_file, ENVIRONMENT)
