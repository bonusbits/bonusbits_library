# New Custom Resources Syntax 12.5+
# property :name, String, default: 'value'

action :docker do
  results = BonusBits::Discovery.docker?
  BonusBits::Output.report "Docker?               (#{results})"
end
