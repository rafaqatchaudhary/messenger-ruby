require "messenger/version"
require "messenger/configuration"

require "messenger/components/text"
require "messenger/components/image"
require "messenger/components/button"
require "messenger/components/bubble"
require "messenger/components/button_template"
require "messenger/components/generic_template"

require "messenger/client"
require "messenger/request"

module Messenger
  class << self
    attr_accessor :config

    def config
      @config ||= Configuration.new
    end

    def configure
      yield(config)
    end

    def reset
      @config = Configuration.new
    end
  end
end

require "messenger/engine"
