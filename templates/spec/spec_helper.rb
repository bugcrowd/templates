require 'bundler/setup'
require 'bugcrowd_templates'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
