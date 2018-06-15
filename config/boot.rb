ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# Doesn't work with the vs code debugger...
# require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
