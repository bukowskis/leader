require 'socket'
require 'timeout'

class Object

  def port_in_use?(port, seconds=1)
    Timeout::timeout(seconds) do
      begin
        TCPSocket.new('localhost', port).close
        true
      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, Timeout::Error
        false
      end
    end
  rescue Timeout::Error
    false
  end

  def command_exists?(command)
    system "hash #{command.to_s.split(' ').first}"
  end

end
