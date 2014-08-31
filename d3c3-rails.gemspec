$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'd3c3-rails/version'
Gem::Specification.new do |s|
  s.name = 'd3c3-rails'
  s.version = D3C3Rails::VERSION.version
  s.summary = 'D3 and C3 for Rails'
  s.author = 'Chris Roberts'
  s.email = 'code@chrisroberts.org'
  s.homepage = 'http://github.com/chrisroberts/d3c3_rails'
  s.license = 'Apache 2.0'
  s.description = 'D3 and C3 for Rails'
  s.require_path = 'lib'
  s.extra_rdoc_files = ['README.md', 'LICENSE', 'CHANGELOG.md']
  s.add_dependency 'rails', '>= 4.0'
  s.add_dependency 'rails_javascript_helpers', '~> 1.0'
  s.files = %w(LICENSE README.md CHANGELOG.md) + Dir.glob("lib/**/*") + Dir.glob("app/**/*")
end
