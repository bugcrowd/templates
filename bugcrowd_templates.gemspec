# frozen_string_literal: true

lib = File.expand_path(__dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date'
require_relative 'lib/bugcrowd_templates/version'

Gem::Specification.new do |spec|
  spec.name          = 'bugcrowd_templates'
  spec.version       = BugcrowdTemplates::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Rajkumar.U']
  spec.email         = ['rajkumar.ulaganadhan@bugcrowd.com']
  spec.date          = Date.today.to_s
  spec.summary       = "Ruby wrapper for Bugcrowd\'s Templates for forms"
  spec.homepage      = 'https://github.com/bugcrowd/templates'
  spec.license       = 'MIT'
  spec.files         = Dir['lib/**/*.{rb,json}']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.0'

  spec.add_development_dependency 'bundler', '~> 2.5.5'
  spec.add_development_dependency 'pry', '~> 0.14.2'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.12'
  spec.add_development_dependency 'rubocop', '1.52.1'

  spec.metadata = {
    'homepage_uri' => 'https://github.com/bugcrowd/templates',
    'changelog_uri' => 'https://github.com/bugcrowd/templates/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/bugcrowd/templates',
    'bug_tracker_uri' => 'https://github.com/bugcrowd/templates/issues'
  }
end
