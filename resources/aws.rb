# New Custom Resources Syntax 12.5+
# property :name, String, default: 'value'

action :fetch_az_region do
  results = BonusBits::AWS.fetch_az_region
  node.default['bonusbits_web']['availability_zone'] = results[:az]
  node.default['bonusbits_web']['region'] = results[:region]
  BonusBits::Output.report "Detected Availability Zone (#{results[:az]})"
  BonusBits::Output.report "Parsed Region (#{results[:region]})"
end
