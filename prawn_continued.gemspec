# frozen_string_literal: true

require_relative 'lib/prawn/version'

Gem::Specification.new do |spec|
  spec.name = 'prawn_continued'
  spec.version = Prawn::VERSION
  spec.summary = 'Prawn is a fast, tiny, and nimble PDF generator for Ruby'
  spec.description = spec.summary
  spec.homepage = "https://github.com/prawn-community/prawn_continued"
  spec.files = Dir.glob("{lib/**/*}") + ['LICENSE', 'README.md', 'Rakefile', 'CHANGELOG.md']
  spec.required_ruby_version = '>= 2.6'
  spec.required_rubygems_version = '>= 1.3.6'

  spec.authors = ['Gregory Brown', 'Brad Ediger', 'Daniel Nelson', 'Jonathan Greenberg', 'James Healy', 'Weston Ganger']
  spec.email = ['weston@westonganger.com']

  spec.add_dependency 'matrix', '>= 0.4'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pdf-inspector', '>= 1.2.1'
  spec.add_development_dependency 'pdf-reader', '>= 1.4.1'
  spec.add_development_dependency 'prawn-manual_builder', '>= 0.3.0'
end
