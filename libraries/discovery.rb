module BonusBits
  # Discovery Class
  class Discovery
    def self.docker?
      filename = '/proc/1/cgroup'
      file_contents = ::File.read(filename)
      if file_contents =~ /docker/
        true
      else
        false
      end
    end
  end
end
