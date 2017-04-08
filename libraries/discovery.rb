module BonusBits
  # Discovery Class
  class Discovery
    def self.container?
      case node['os']
      when 'linux'
        filename = '/proc/1/cgroup'
        file_contents = ::File.read(filename)
        if File.exist?('/.dockerenv')
          true
        elsif file_contents =~ /docker/ || file_contents =~ /lxc/
          true
        else
          false
        end
      when 'windows'
        false # TODO: Add logic for winderz
      else
        false
      end
    end

    def self.ec2?
      return true if node['fqdn'] =~ /^ip-.*\.compute\.internal$/
      case node['platform_family']
      when 'rhel'
        ec2_net_script = '/etc/sysconfig/network-scripts/ec2net-functions'
        ec2_user = '/home/ec2-user'
        ::File.directory?(ec2_user) && ::File.exist?(ec2_net_script)
      when 'windows'
        ::File.directory?('C:/Users/ec2-user')
      else
        false
      end
    end

    def self.aws?
      return true if ec2?
      # TODO: Need more magic for ECS Docker container
    end
  end
end
