ENV["ARTOO_TEST"] = 'true'

require File.expand_path '../../sphero.rb', __FILE__

Celluloid.logger = nil

require 'minitest/autorun'
require 'mocha/setup'
