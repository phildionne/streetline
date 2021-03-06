require 'streetline/version'

module Streetline
  module Configuration
    VALID_OPTIONS_KEYS    = [:api_endpoint, :api_token, :user_agent].freeze

    DEFAULT_API_ENDPOINT  = "https://api.streetline.com"
    DEFAULT_API_TOKEN     = nil
    DEFAULT_USER_AGENT    = "Streetline Ruby Gem #{Streetline::VERSION}".freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset!
    end

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    def options
      Hash[ * VALID_OPTIONS_KEYS.map { |key| [key, send(key)] }.flatten ]
    end

    def reset!
      self.api_endpoint = DEFAULT_API_ENDPOINT
      self.api_token    = DEFAULT_API_TOKEN
      self.user_agent   = DEFAULT_USER_AGENT

      return true
    end
  end
end
