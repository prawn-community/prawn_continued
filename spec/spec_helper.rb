# frozen_string_literal: true

puts "Prawn specs: Running on Ruby Version: #{RUBY_VERSION}"

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec/'
  end
end

require 'prawn_continued'

Prawn.debug = true
Prawn::Fonts::AFM.hide_m17n_warning = true

require 'rspec'
require 'pdf/reader'
require 'pdf/inspector'
require 'securerandom'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(__dir__, 'support', '**', '*.rb')].sort.each { |f| require f }

RSpec.configure do |config|
  config.include EncodingHelpers

  ### for TTFUNK
  config.include PathHelpers
  config.include TextHelpers
end

def create_pdf(klass = Prawn::Document, &block)
  klass.new(margin: 0, &block)
end

RSpec::Matchers.define :have_parseable_xobjects do
  match do |actual|
    expect { PDF::Inspector::XObject.analyze(actual.render) }.to_not raise_error
    true
  end
  failure_message do |actual|
    "expected that #{actual}'s XObjects could be successfully parsed"
  end
end

# Make some methods public to assist in testing
# module Prawn
#   module Graphics
#     public :map_to_absolute
#   end
# end
