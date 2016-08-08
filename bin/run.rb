#!/usr/bin/env ruby

require_relative '../config/setup'
require 'clark_event'

options = { durable: true, vhost: ENV['RABBIT_VHOST'] }
worker = Clark::Event::Worker.new(options)
worker.run
