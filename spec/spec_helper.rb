# https://github.com/rodjek/rspec-puppet
require 'rspec-puppet'
require 'yaml'

RSpec.configure do |c|
  c.mock_with :rspec
end

base_dir = File.dirname(File.expand_path(__FILE__))

RSpec.configure do |c|
    c.module_path     = File.join(base_dir, 'fixtures/modules') + ':' + File.join(base_dir, '../modules') + ':' + File.join(base_dir, '../site')
  puts c.module_path
  c.manifest        = File.join('manifests', 'site.pp')
  c.hiera_config    = File.join(base_dir, '../hiera.yaml')
  c.default_facts   = YAML.load_file File.join(base_dir, '/default_facts.yaml')
end
 
# Uncomment this to show coverage report, also useful for debugging
#at_exit { RSpec::Puppet::Coverage.report! }

#set to "yes" to enable the future parser, the equivalent of setting parser=future in puppet.conf.
# ENV['FUTURE_PARSER'] = 'yes'

# set to "yes" to enable strict variable checking, the equivalent of setting strict_variables=true in puppet.conf.
# ENV['STRICT_VARIABLES'] = 'yes'

# set to the desired ordering method ("title-hash", "manifest", or "random") to set the order of unrelated resources
# when applying a catalog. Leave unset for the default behavior, currently "random". This is equivalent to setting
# ordering in puppet.conf.
#ENV['ORDERING'] = 'random'

# set to "no" to enable structured facts, otherwise leave unset to retain the current default behavior.
# This is equivalent to setting stringify_facts=false in puppet.conf.
#ENV['STRINGIFY_FACTS']  = 'no'

# set to "yes" to enable the $facts hash and trusted node data, which enabled $facts and $trusted hashes.
# This is equivalent to setting trusted_node_data=true in puppet.conf.
#ENV['TRUSTED_NODE_DATA'] = 'yes'

#RSpec.configure do |c|
#    c.formatter = 'documentation'
#    c.mock_with :rspec
#end
