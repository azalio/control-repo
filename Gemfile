source ENV['GEM_SOURCE'] || "https://rubygems.org"

def location_for(place, fake_version = nil)
  if place =~ /^((?:git|https?)[:@][^#]*)#(.*)/
    [fake_version, { :git => $1, :branch => $2, :require => false }].compact
  elsif place =~ /^file:\/\/(.*)/
    ['>= 0', { :path => File.expand_path($1), :require => false }]
  else
    [place, { :require => false }]
  end
end

if RUBY_VERSION =~ /^1\.?/
  gem 'rake', '10.5.0' # still supports 1.8
else
  gem 'rake'
end

puppetversion = ENV['PUPPET_GEM_VERSION'] || '~> 4.10.10'

gem 'rspec', *location_for(ENV['RSPEC_GEM_VERSION'] || '~> 3.0')
gem 'puppet', puppetversion, :require => false
gem 'puppetlabs_spec_helper', :require => false
gem 'puppet-lint', :git => 'https://github.com/rodjek/puppet-lint.git', :require => false
gem 'puppet-retrospec', :require => false
gem 'parallel_tests', :require => false
gem 'rspec-puppet', :require => false
gem 'r10k', '~> 2.3'

if ENV['COVERAGE'] == 'yes'
  gem 'coveralls', :require => false
end

# vim:ft=ruby
