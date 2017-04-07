module BonusBits
  # Discovery Class
  class Discovery
    def self.container?
      filename = '/proc/1/cgroup'
      file_contents = ::File.read(filename)
      if File.exist?('/.dockerenv')
        true
      elsif file_contents =~ /docker/ || file_contents =~ /lxc/
        true
      else
        false
      end
    end
  end
end
