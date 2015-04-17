source 'https://rubygems.org'
puppetversion = ENV.key?('PUPPET_GEM_VERSION') ? "= #{ENV['PUPPET_GEM_VERSION']}" : ['>= 2.7']
gem 'puppet', puppetversion
gem 'iconv'

group :development, :test do
  gem 'puppet-syntax'
  gem 'puppetlabs_spec_helper'
  gem 'puppet-lint'
end
