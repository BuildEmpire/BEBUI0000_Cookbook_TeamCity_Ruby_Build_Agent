name             'teamcity_ruby_build_agent'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'Local Build Agent Recipe'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.7'

recipe 'teamcity_ruby_build_agent', 'Local Build Agent Recipe'

%w{ ubuntu }.each do |os|
  supports os
end

%w{apt python cookbook_railsbox phantomjs teamcity_build_agent nodejs}.each do |cb|
  depends cb
end