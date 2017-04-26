name 'bonusbits_library'
maintainer 'Levon Becker'
maintainer_email 'levon.becker.github@bonusbits.com'
license 'MIT'
description 'Shared LWRP and Libraries'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '~> 12.1' if respond_to?(:chef_version)
source_url 'https://github.com/bonusbits/bonusbits_library'
issues_url 'https://github.com/bonusbits/bonusbits_library/issues'
version '1.1.0'

%w(
  amazon
  debian
  ubuntu
  centos
  redhat
  suse
  opensuse
  windows
).each do |os|
  supports os
end
