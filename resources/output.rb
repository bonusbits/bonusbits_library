# rubocop:disable Style/HashSyntax

actions :display_output
default_action :display_output

attribute :name, :kind_of => String, :name_attribute => true, :default => 'RESULTS'
attribute :reports, :kind_of => Array
