require 'optparse'
require 'ostruct'
require 'singleton'

module Leader
  class Options
    attr_reader :options
    include Singleton

    def initialize
      @options = OpenStruct.new
      OptionParser.new do |opts|
        opts.on "--unless-port-in-use=PORT", String, "Don't run the command if this port is blocked" do |value|
          @options.unless_port = value
        end
      end.order!
    end

    protected

    def method_missing(name, *args, &block)
      options.send(name)
    end

    def self.method_missing(*args, &block)
      instance.send(*args, &block)
    end

  end
end

