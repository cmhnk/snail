# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

if ENV['RAILS_ENV'] == 'test'
  require File.expand_path('../../spec/spec_helper', __FILE__)
end
